<?php

namespace Np\PsiModule\Http\Controller\Admin;

use Anomaly\Streams\Platform\Stream\Contract\StreamRepositoryInterface;
use Anomaly\StreamsModule\Entry\Command\AddDefaultTablePermissions;
use Anomaly\StreamsModule\Entry\Command\GetEntryTableBuilder;
use Anomaly\StreamsModule\Group\Contract\GroupRepositoryInterface;
use Anomaly\StreamsModule\Http\Controller\Admin\VirtualController;

class NewsController extends VirtualController
{
        /**
     * Create a new VirtualController instance.
     */
    public function __construct()
    {
        parent::__construct();
    }

        /**
     * Return an index of existing entries.
     *
     * @param GroupRepositoryInterface $groups
     * @param  StreamRepositoryInterface $streams
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(
        GroupRepositoryInterface $groups,
        StreamRepositoryInterface $streams
    ) {

        /* @var GroupInterface $group */
        if (!$group = $groups->find($this->route->getAction('anomaly.module.streams::group.id'))) {
            abort(404);
        }

        /* @var StreamInterface $stream */
        if (!$stream = $streams->find($this->route->getAction('anomaly.module.streams::stream.id'))) {
            abort(404);
        }

        $builder = $this->dispatch(new GetEntryTableBuilder($stream));

        $this->dispatch(new AddDefaultTablePermissions($builder, $group, $stream));

        $builder->addTableData('group', $group);

        return $builder->render();
    }

}
