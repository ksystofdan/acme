<?php
namespace Np\PsiModule\Http\Controller;

use Anomaly\Streams\Platform\Http\Controller\PublicController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Anomaly\VariablesModule\Variable\Contract\VariableRepositoryInterface;
use Anomaly\FilesModule\File\FilePresenter;
use Exception;
// use Session;
use Np\PsiModule\Knowledge\KnowledgeModel;


class AjaxController extends PublicController
{
    function enquire(Request $request, VariableRepositoryInterface $variables) {
        
        $emails_to = $variables->get('forms_settings', 'contact_forms')->toArray();
        $data = $request->all();
        
        foreach($data['data'] as $inputs){
            if($inputs['name'] == 'subject'){
                $subject = $inputs['value'];
            }
        }
        try{
            Mail::send('module::mail/contact_form', $data, function($message) use ($subject, $emails_to)
            {
                $message->subject($subject);
                foreach($emails_to as $user){
                    if($user['activated'])
                        $message->to($user['email'] );
                }
            });
        }catch (Exception $e) {
            return response()->json([
                'error' => $e
            ], 500);
        }
        return response()->json([
            'data' => $data
        ]);
    }
    
    function buyers_guide(Request $request, VariableRepositoryInterface $variables) {
        
        $emails_to = $variables->get('forms_settings', 'knowledge_base')->toArray();
        $data = $request->all();
        
        $subject = null;
        foreach($data['data'] as $inputs){
            if($inputs['name'] == 'subject'){
                $subject = $inputs['value'];
            }
            if($inputs['name'] == 'artical_id'){
                $postId = $inputs['value'];
            }
            if($inputs['name'] == 'email'){
                $userEmail = $inputs['value'];
            }
        }
        $item = KnowledgeModel::find( $postId );
        $pdf_list = $item->buyers_guides_pdfs;
       
        $pdf_urls = [];
        $i = 0;
        foreach($pdf_list as $pdf_file){
            $pdf_urls[$i]['url'] = url('files/'.$pdf_file->path());
            $pdf_urls[$i]['title'] = $pdf_file->name;
            $i++;
        }
        $title = $item->title;
        try{
            
            Mail::send('module::mail/knowledge_base_to_user', ['data' => $pdf_urls], function($message) use ($title, $userEmail)
            {
                $message->subject('Knowledge centre: '.$title);
                $message->to($userEmail );
            });
            
            Mail::send('module::mail/knowledge_base', $data, function($message) use ($subject, $emails_to)
            {
                $message->subject($subject);
                foreach($emails_to as $user){
                    if($user['activated'])
                        $message->to($user['email'] );
                }
            });
         //   Session::put('kwnoledge_form', 'submited');
        }catch (Exception $e) {
            return response()->json([
                'error' => $e
            ], 500);
        }
        return response()->json([
            'data' => $data
        ]);
    }
    
    function newsletter(Request $request, VariableRepositoryInterface $variables) {
        
        $emails_to = $variables->get('forms_settings', 'newsletter')->toArray();
        $data = $request->all();
        foreach($data['data'] as $inputs){
            if($inputs['name'] == 'subject'){
                $subject = $inputs['value'];
            }
        }
        $emails = array();
        foreach($data['data'] as $inputs){
            if($inputs['name'] == 'email'){
                $emails['email'] = $inputs['value'];
            }
        }
        
        
        try{
            Mail::send('module::mail/newsletter', $emails, function($message) use ($subject, $emails_to, $emails)
            {
                $message->subject($emails['email']);
                foreach($emails_to as $email){
                    $message->to($email['emails']);
                }
            });
        }catch (Exception $e) {
            return response()->json([
                'error' => $e
            ], 500);
        }
        return response()->json([
            'data' => $data
        ]);
    }
    
    function oppo(Request $request, VariableRepositoryInterface $variables){
        $emails_to = $variables->get('forms_settings', 'contact_forms')->toArray();
        $index = $request->get('index');
        $data = $request->except('index', 'subject', 'file-upload-'.$index, 'agree-'.$index, '_token');
        
        $file = null;
        if($request->file('file-upload-'.$index)){
            $file = $request->file('file-upload-'.$index);
            
           foreach($request->file() as $files){
               $file = $files;
           }
           $filepath = url($file->getRealPath().'/'.$file->getClientOriginalName());
        }
        
        $subject = $request->get('subject');
        try{
            Mail::send('module::mail/oppo_form', ['data' => $data], function($message) use ($subject, $file, $emails_to)
            {
                $message->subject($subject);
                if($file){
                   $message->attach($file->getRealPath(), array(
                       'as' => 'resume.' . $file->getClientOriginalExtension(), 
                       'mime' => $file->getMimeType())
                   );
                }
                foreach($emails_to as $user){
                    if($user['activated'])
                        $message->to($user['email'] );
                }
            });
        }catch (Exception $e) {
            return redirect()->back()->with('error','error_send');
        }finally{
            $data = null;
           $emails_to = null;
        }
        
        return redirect()->back()->with('success','successfuly_send');
        
        
    }
    

}
