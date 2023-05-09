<?php
namespace Np\PsiModule\Http\Controller;

use Anomaly\Streams\Platform\Http\Controller\PublicController;
use Anomaly\Streams\Platform\Model\Products\ProductsCategoriesEntryModel;
use Anomaly\Streams\Platform\Model\Products\ProductsCategoriesEntryTranslationsModel;
use Anomaly\Streams\Platform\Model\Products\ProductsComponentsGroupsEntryModel;
use Anomaly\Streams\Platform\Model\Products\ProductsComponentsGroupsEntryTranslationsModel;
use Anomaly\Streams\Platform\Model\Products\ProductsProductsEntryTranslationsModel;
use Illuminate\Support\Facades\DB;
use Np\PsiModule\Brands\BrandsModel;
use Np\PsiModule\Products\ProductsModel;

class PsiController extends PublicController
{

    public function __construct(
        ProductsModel $productsModel,
        ProductsCategoriesEntryModel $categoriesModel,
        ProductsComponentsGroupsEntryModel $componentsGroupModel
    ) {
        parent::__construct();
        $this->categoriesModel = $categoriesModel;
        $this->componentsGroupModel = $componentsGroupModel;
        $this->productsModel = $productsModel;
    }

    function index(ProductsCategoriesEntryModel $productsCategories, BrandsModel $brandsModel)
    {
        //$this->importProjects();
        //$categories = $productsCategories->all();
        //dd($productsCategories->all());

        //$this->createComponentGroups();
        //$this->createCategories();
        //$this->slugifyComponents();
        //$this->slugifyComponents();
        //$this->slugifyProducts();
        exit('done');
        $productsCategories->create([
            'en' => [
                'title' => 'pavadinimas en',
            ],
            'ar' => [
                'title' => 'pavadinimas ar',
            ],
            'es' => [
                'title' => 'pavadinimas es',
            ],
            'de' => [
                'title' => 'pavadinimas de',
            ]
        ]);
        //dd($brandsModel->all()->toArray());
        exit('ok');
    }

    function slugifyProducts() {
        $items = ProductsProductsEntryTranslationsModel::all()->toArray();
        foreach($items as $item) {
            DB::table('products_products_translations')
                ->where('id', $item['id'])
                ->update(['slug' => str_slug( $item['title'] , '-') ]);
        }
    }

    function slugifyComponents() {
        $items = ProductsComponentsGroupsEntryTranslationsModel::all()->toArray();
        foreach($items as $item) {
            DB::table('products_components_groups_translations')
                ->where('id', $item['id'])
                ->update(['slug' => str_slug( $item['title'] , '-') ]);
        }
    }

    function createComponentGroups()
    {
        $items = [
            'Pallet Conveyors',
            'Pallet Lifts',
            'RGV - Rail Guided Vehicles',
            'Automated truck (un)loading',
            'AGV - Automated Guided Vehicles',
            'Pallet AS/RS',
            'Racking',
            'Robotics',
            'Manual Handling Systems',
            'Pallet Accessories',
            'Case Conveyors',
            'Case Lifts',
            'Case AS/RS',
            'Shelving',
            'Case Accessories',
            'IT Solutions',
            'Control Systems',
            'Pick by Light',
            'Goods-to-person',
            'Push Tray Sorter',
            'Low Speed Sortation',
            'Pusher Sorter',
            'Machine Guarding',
            'Belting',
            'Collaborative Robots',
            'Automated Vertical Storage',
            'Sensors',
            'Identification',
            'Data Transmission',
            'Safety Devices',
            'Pneumatics',
            'Vacuum Technology',
            'Gaskets & Packing',
            'Plastic bins',
            'AS Interface',
            'Accessories',
        ];

        foreach ($items as $item) {
            $this->componentsGroupModel->create([
                'en' => [
                    'title' => $item,
                ],
            ]);
        }
    }

    function createCategories()
    {
        $items = [
            'Pallet Roller Conveyors',
            'Pallet Chain Conveyors',
            'Pallet Roller/Chain Side Transfers',
            'Pallet Roller/Chain Turntables',
            'Pallet Lift Station',
            'Pallet Lift',
            'High Speed Lift',
            'Pallet RGV - Rail Guided Vehicles',
            'Pallet In-trailer conveyor',
            'Pallet Truck Docking station',
            'Pallet AGV',
            'Stacker Crane',
            'Kanghar (Mother & Child)',
            'Radio Shuttle',
            'Heavy Load Shuttle',
            'Selective pallet racking',
            'Drive-in pallet racking',
            'Shuttle storage',
            'Grippers',
            'AI Vision systems',
            'Vacuum Handling Solutions',
            'Pallet Stoppers',
            'Pallet Infeed Stations',
            'Pallet Label Scanners',
            'Pallet Label Printers',
            'Pallet Shape Controls',
            'Pallet Weighing Stations',
            'Pallet Wrapping Machines',
            'Pallet Stacker / Destacker',
            'Pallet Check Station',
            'Case Roller Conveyor',
            'Case Belt Conveyor',
            'Case Conveyor Diverter',
            'Case Conveyor Roller Curve',
            'Case Conveyor Roller Merge',
            'Case Conveyor Push/Puller',
            'Case Conveyor Infeed Turbo Roller',
            'Case Conveyor Belt Curve',
            'Case Conveyor Belt Merge',
            'Case Lift',
            'Case Lift Station',
            'Case Single/ Double Lift',
            'Paternoster',
            'Spiral Case Lift',
            'Saluki (Miniload)',
            'Boltless shelving',
            'Plastic storage bins',
            'Shelving',
            'Case Shape Control',
            'Case Weight Control',
            'Case Height Control',
            'Case Label Printers',
            'Carton Erectors',
            'Carton Sealers',
            'Case Scanners',
            'WMS',
            'WCS / WES',
            'SCADA',
            'PLC',
            'Pick by Light',
            'Colour Picking',
            'Work Stations',
            'Cobots',
            'Robotic Layer Sortation',
            'Push Tray Sorter',
            'Low Speed Sortation (popup)',
            'Pusher Sorter',
            'Cantilever',
            'Machine Guarding',
            'Warehouse partitioning',
            'Cable Routing',
            'Storeroom walls',
            'Fabric Belts',
            'Timing Belts (HabaSYNC )',
            'Monolythic Belts',
            'Plastic Modular Belts (HabasitLINK)',
            'Coveyor Chains',
            'HabiPLAST',
            'Habasit Accessories',
            'PTFE products',
            'Metal conveyor belts',
            'Collaborative Robots',
            'Vertical Shuttles',
            'Vertical Buffers',
            'Vertical Carousel',
            'Optical Sensors',
            'Switching sensors',
            'Measuring sensors',
            'Safety Sensors',
            'Identification',
            'Data Transmission',
            'Position Switches',
            'Human-machine interface',
            'Lift devices',
            'Actuators',
            'Valves',
            'Air treatment',
            'Pneumatic Fittings',
            'Pneumatic Tubing',
            'Vacuum Cups',
            'Vacuum Lifters',
            'Vacuum Generators',
            'Gaskets & Jointing',
            'Gland Packing',
            'Plastic bins',
            'AS Interface',
            'Seamless and Grabber belts',
            'Leuze Accessories',
            'Safety Devices',
            'Vacuum Accessories',
        ];

        foreach ($items as $item) {
            $this->categoriesModel->create([
                'en' => [
                    'title' => $item,
                ],
            ]);
        }
    }

    function importProjects() {
        $json = '[{"product":"X-Guard","component_group":"Machine Guarding","category":"Machine Guarding","brand":"Axelent"},{"product":"X-Guard Lite","component_group":"Machine Guarding","category":"Machine Guarding","brand":"Axelent"},{"product":"X-Tray for X-Guard","component_group":"Machine Guarding","category":"Machine Guarding","brand":"Axelent"},{"product":"X-Store 2.0","component_group":"Machine Guarding","category":"Warehouse partitioning","brand":"Axelent"},{"product":"SafeStore","component_group":"Machine Guarding","category":"Warehouse partitioning","brand":"Axelent"},{"product":"X-Rail Fall Protection","component_group":"Machine Guarding","category":"Warehouse partitioning","brand":"Axelent"},{"product":"Shelfstore","component_group":"Machine Guarding","category":"Warehouse partitioning","brand":"Axelent"},{"product":"X-Tray","component_group":"Machine Guarding","category":"Cable Routing","brand":"Axelent"},{"product":"X-Rack","component_group":"Machine Guarding","category":"Cable Routing","brand":"Axelent"},{"product":"Storeroom","component_group":"Machine Guarding","category":"Storeroom walls","brand":"Axelent"},{"product":"Light Conveyor Belts","component_group":"Belting","category":"Fabric Belts","brand":"Habasit"},{"product":"Heavy Conveyor Belts","component_group":"Belting","category":"Fabric Belts","brand":"Habasit"},{"product":"Food Belts","component_group":"Belting","category":"Fabric Belts","brand":"Habasit"},{"product":"Processing Belts","component_group":"Belting","category":"Fabric Belts","brand":"Habasit"},{"product":"Folder-Gluer Belts","component_group":"Belting","category":"Fabric Belts","brand":"Habasit"},{"product":"Elastomer-Covered Conveying Belts","component_group":"Belting","category":"Fabric Belts","brand":"Habasit"},{"product":"Machine Tapes","component_group":"Belting","category":"Fabric Belts","brand":"Habasit"},{"product":"Power Transmission Belts","component_group":"Belting","category":"Fabric Belts","brand":"Habasit"},{"product":"Seamless Belts","component_group":"Belting","category":"Fabric Belts","brand":"Habasit"},{"product":"Tobacco Belts","component_group":"Belting","category":"Fabric Belts","brand":"Habasit"},{"product":"Open-End Timing Belts","component_group":"Belting","category":"Timing Belts (HabaSYNC )","brand":"Habasit"},{"product":"Wide Timing Belts","component_group":"Belting","category":"Timing Belts (HabaSYNC )","brand":"Habasit"},{"product":"Flex Timeing Belts","component_group":"Belting","category":"Timing Belts (HabaSYNC )","brand":"Habasit"},{"product":"Flat Belts","component_group":"Belting","category":"Timing Belts (HabaSYNC )","brand":"Habasit"},{"product":"Cast Belts","component_group":"Belting","category":"Timing Belts (HabaSYNC )","brand":"Habasit"},{"product":"Covers","component_group":"Belting","category":"Timing Belts (HabaSYNC )","brand":"Habasit"},{"product":"Habasit Cleandrive","component_group":"Belting","category":"Monolythic Belts","brand":"Habasit"},{"product":"Extruded Belts","component_group":"Belting","category":"Monolythic Belts","brand":"Habasit"},{"product":"Monolithic Flat Belts","component_group":"Belting","category":"Monolythic Belts","brand":"Habasit"},{"product":"HabasitLINK Micropitch","component_group":"Belting","category":"Plastic Modular Belts (HabasitLINK)","brand":"Habasit"},{"product":"HabasitLINK Spiral Belts","component_group":"Belting","category":"Plastic Modular Belts (HabasitLINK)","brand":"Habasit"},{"product":"Habasit HyCLEAN","component_group":"Belting","category":"Plastic Modular Belts (HabasitLINK)","brand":"Habasit"},{"product":"Super HyCLEAN","component_group":"Belting","category":"Plastic Modular Belts (HabasitLINK)","brand":"Habasit"},{"product":"HabasitLINK for different industries","component_group":"Belting","category":"Plastic Modular Belts (HabasitLINK)","brand":"Habasit"},{"product":"Straight Chains","component_group":"Belting","category":"Coveyor Chains","brand":"Habasit"},{"product":"Radius Chains","component_group":"Belting","category":"Coveyor Chains","brand":"Habasit"},{"product":"Connecting Link","component_group":"Belting","category":"Coveyor Chains","brand":"Habasit"},{"product":"PMB, Chains and Goods","component_group":"Belting","category":"HabiPLAST","brand":"Habasit"},{"product":"Roller Chains","component_group":"Belting","category":"HabiPLAST","brand":"Habasit"},{"product":"Round and V-Belts","component_group":"Belting","category":"HabiPLAST","brand":"Habasit"},{"product":"Timing Belts","component_group":"Belting","category":"HabiPLAST","brand":"Habasit"},{"product":"Tracking Guides","component_group":"Belting","category":"Habasit Accessories","brand":"Habasit"},{"product":"Cleats","component_group":"Belting","category":"Habasit Accessories","brand":"Habasit"},{"product":"Sidewalls","component_group":"Belting","category":"Habasit Accessories","brand":"Habasit"},{"product":"Edge Sealing","component_group":"Belting","category":"Habasit Accessories","brand":"Habasit"},{"product":"Wave profiles","component_group":"Belting","category":"Habasit Accessories","brand":"Habasit"},{"product":"Cable Puller Belts","component_group":"Belting","category":"Seamless and Grabber belts","brand":"Habasit"},{"product":"Coil Wrapper, Steel Wrapper or Coil Winder Belts","component_group":"Belting","category":"Seamless and Grabber belts","brand":"Habasit"},{"product":"Silicone Processing Belts","component_group":"Belting","category":"Seamless and Grabber belts","brand":"Habasit"},{"product":"Rotary Molder Belts","component_group":"Belting","category":"Seamless and Grabber belts","brand":"Habasit"},{"product":"Silicone Coated Fabrics","component_group":"Belting","category":"PTFE products","brand":"Tertaflon"},{"product":"Tapes","component_group":"Belting","category":"PTFE products","brand":"Tertaflon"},{"product":"Belts","component_group":"Belting","category":"PTFE products","brand":"Tertaflon"},{"product":"Rods, Tubes and Sheets","component_group":"Belting","category":"PTFE products","brand":"Tertaflon"},{"product":"PTFE Machined Parts","component_group":"Belting","category":"PTFE products","brand":"Tertaflon"},{"product":"Foam Tapes Norton","component_group":"Belting","category":"PTFE products","brand":"Tertaflon"},{"product":"Hoses","component_group":"Belting","category":"PTFE products","brand":"Tertaflon"},{"product":"Wire mesh belts","component_group":"Belting","category":"Metal conveyor belts","brand":"Twentebelt"},{"product":"Eyelink belts","component_group":"Belting","category":"Metal conveyor belts","brand":"Twentebelt"},{"product":"Spiral wirelink belt","component_group":"Belting","category":"Metal conveyor belts","brand":"Twentebelt"},{"product":"TwenteFlex conveyor belts","component_group":"Belting","category":"Metal conveyor belts","brand":"Twentebelt"},{"product":"Special conveyor belts","component_group":"Belting","category":"Metal conveyor belts","brand":"Twentebelt"},{"product":"HCR series","component_group":"Collaborative Robots","category":"Collaborative Robots","brand":"Hanwha"},{"product":"Vertical Buffer Module","component_group":"Automated Vertical Storage","category":"Vertical Buffers","brand":"Kardex"},{"product":"Vertical Carousel Module","component_group":"Automated Vertical Storage","category":"Vertical Carousel","brand":"Kardex"},{"product":"Vertical Lift Module","component_group":"Automated Vertical Storage","category":"Vertical Shuttles","brand":"Kardex"},{"product":"Throughbeam photoelectric sensors","component_group":"Sensors","category":"Optical Sensors","brand":"Leuze"},{"product":"Retro-reflective photoelectric sensors","component_group":"Sensors","category":"Optical Sensors","brand":"Leuze"},{"product":"Diffuse sensors","component_group":"Sensors","category":"Optical Sensors","brand":"Leuze"},{"product":"Sensors for Ex applications","component_group":"Sensors","category":"Optical Sensors","brand":"Leuze"},{"product":"Inductive switches","component_group":"Sensors","category":"Switching sensors","brand":"Leuze"},{"product":"Capacitive sensors","component_group":"Sensors","category":"Switching sensors","brand":"Leuze"},{"product":"Ultrasonic sensors","component_group":"Sensors","category":"Switching sensors","brand":"Leuze"},{"product":"Optical distance sensors","component_group":"Sensors","category":"Measuring sensors","brand":"Leuze"},{"product":"Sensors for positioning","component_group":"Sensors","category":"Measuring sensors","brand":"Leuze"},{"product":"Ultrasonic distance sensors","component_group":"Sensors","category":"Measuring sensors","brand":"Leuze"},{"product":"Sensors for contour measurement","component_group":"Sensors","category":"Measuring sensors","brand":"Leuze"},{"product":"Area scanners","component_group":"Sensors","category":"Measuring sensors","brand":"Leuze"},{"product":"Measuring light curtains","component_group":"Sensors","category":"Measuring sensors","brand":"Leuze"},{"product":"Measuring fork sensors","component_group":"Sensors","category":"Measuring sensors","brand":"Leuze"},{"product":"Safety laser scanner","component_group":"Sensors","category":"Safety Sensors","brand":"Leuze"},{"product":"Safety light curtains","component_group":"Sensors","category":"Safety Sensors","brand":"Leuze"},{"product":"Multiple light beam safety devices","component_group":"Sensors","category":"Safety Sensors","brand":"Leuze"},{"product":"Muting and Smart Process Gating (SPG)","component_group":"Sensors","category":"Safety Sensors","brand":"Leuze"},{"product":"Single light beam safety devices","component_group":"Sensors","category":"Safety Sensors","brand":"Leuze"},{"product":"Safety radar system","component_group":"Sensors","category":"Safety Sensors","brand":"Leuze"},{"product":"Safe bar code positioning system","component_group":"Sensors","category":"Safety Sensors","brand":"Leuze"},{"product":"Safety switches","component_group":"Sensors","category":"Safety Sensors","brand":"Leuze"},{"product":"Safety proximity sensors","component_group":"Sensors","category":"Safety Sensors","brand":"Leuze"},{"product":"Safety locking devices","component_group":"Sensors","category":"Safety Sensors","brand":"Leuze"},{"product":"Safety command devices","component_group":"Sensors","category":"Safety Sensors","brand":"Leuze"},{"product":"Safety controls","component_group":"Sensors","category":"Safety Sensors","brand":"Leuze"},{"product":"Safety relay","component_group":"Sensors","category":"Safety Sensors","brand":"Leuze"},{"product":"Stationary 1D bar code readers","component_group":"Identification","category":"Identification","brand":"Leuze"},{"product":"Stationary 1D / 2D code readers","component_group":"Identification","category":"Identification","brand":"Leuze"},{"product":"1D/2D hand-held scanners","component_group":"Identification","category":"Identification","brand":"Leuze"},{"product":"RFID","component_group":"Identification","category":"Identification","brand":"Leuze"},{"product":"Optical data transmission","component_group":"Data Transmission","category":"Data Transmission","brand":"Leuze"},{"product":"Industrial image processing","component_group":"Identification","category":"Identification","brand":"Leuze"},{"product":"Network and Connection Technology","component_group":"Accessories","category":"Leuze Accessories","brand":"Leuze"},{"product":"Mounting systems","component_group":"Accessories","category":"Leuze Accessories","brand":"Leuze"},{"product":"Reflectors and reflective tapes","component_group":"Accessories","category":"Leuze Accessories","brand":"Leuze"},{"product":"Deflecting mirrors/device columns","component_group":"Accessories","category":"Leuze Accessories","brand":"Leuze"},{"product":"Protective screens","component_group":"Accessories","category":"Leuze Accessories","brand":"Leuze"},{"product":"Fiber optics","component_group":"Accessories","category":"Leuze Accessories","brand":"Leuze"},{"product":"Bar code tapes","component_group":"Accessories","category":"Leuze Accessories","brand":"Leuze"},{"product":"Products for commissioning","component_group":"Accessories","category":"Leuze Accessories","brand":"Leuze"},{"product":"Optical and acoustic signalers","component_group":"Accessories","category":"Leuze Accessories","brand":"Leuze"},{"product":"Muting","component_group":"Accessories","category":"Leuze Accessories","brand":"Leuze"},{"product":"Position Swtiches","component_group":"Safety Devices","category":"Position Switches","brand":"Pizzato"},{"product":"Microswitches","component_group":"Safety Devices","category":"Position Switches","brand":"Pizzato"},{"product":"Switches for special applications","component_group":"Safety Devices","category":"Position Switches","brand":"Pizzato"},{"product":"Foot switches","component_group":"Safety Devices","category":"Human-machine interface","brand":"Pizzato"},{"product":"Buttons","component_group":"Safety Devices","category":"Human-machine interface","brand":"Pizzato"},{"product":"Selectors","component_group":"Safety Devices","category":"Human-machine interface","brand":"Pizzato"},{"product":"Contact Blocks","component_group":"Safety Devices","category":"Human-machine interface","brand":"Pizzato"},{"product":"LED units","component_group":"Safety Devices","category":"Human-machine interface","brand":"Pizzato"},{"product":"Sockets","component_group":"Safety Devices","category":"Human-machine interface","brand":"Pizzato"},{"product":"Indicator lights","component_group":"Safety Devices","category":"Human-machine interface","brand":"Pizzato"},{"product":"Potentiometers","component_group":"Safety Devices","category":"Human-machine interface","brand":"Pizzato"},{"product":"Joystick","component_group":"Safety Devices","category":"Human-machine interface","brand":"Pizzato"},{"product":"Housings","component_group":"Safety Devices","category":"Human-machine interface","brand":"Pizzato"},{"product":"Control device units","component_group":"Safety Devices","category":"Human-machine interface","brand":"Pizzato"},{"product":"Illuminated discs","component_group":"Safety Devices","category":"Human-machine interface","brand":"Pizzato"},{"product":"Accessories EROUND line","component_group":"Safety Devices","category":"Human-machine interface","brand":"Pizzato"},{"product":"Buzzers","component_group":"Safety Devices","category":"Human-machine interface","brand":"Pizzato"},{"product":"Position Swtiches","component_group":"Safety Devices","category":"Lift devices","brand":"Pizzato"},{"product":"Switches with manual reset","component_group":"Safety Devices","category":"Lift devices","brand":"Pizzato"},{"product":"Switches for over-speed devices with manual reset","component_group":"Safety Devices","category":"Lift devices","brand":"Pizzato"},{"product":"Switches with electrical reset","component_group":"Safety Devices","category":"Lift devices","brand":"Pizzato"},{"product":"Door switches","component_group":"Safety Devices","category":"Lift devices","brand":"Pizzato"},{"product":"Operator switches","component_group":"Safety Devices","category":"Lift devices","brand":"Pizzato"},{"product":"Lift control stations","component_group":"Safety Devices","category":"Lift devices","brand":"Pizzato"},{"product":"Safety modules for lift floor leveling","component_group":"Safety Devices","category":"Lift devices","brand":"Pizzato"},{"product":"Signalling switches","component_group":"Safety Devices","category":"Lift devices","brand":"Pizzato"},{"product":"Safety Switches","component_group":"Safety Devices","category":"Safety Devices","brand":"Pizzato"},{"product":"Safety Sensors","component_group":"Safety Devices","category":"Safety Devices","brand":"Pizzato"},{"product":"Safety Handles","component_group":"Safety Devices","category":"Safety Devices","brand":"Pizzato"},{"product":"Housings with emergency pushbuttons","component_group":"Safety Devices","category":"Safety Devices","brand":"Pizzato"},{"product":"Control device units","component_group":"Safety Devices","category":"Safety Devices","brand":"Pizzato"},{"product":"Safety modules","component_group":"Safety Devices","category":"Safety Devices","brand":"Pizzato"},{"product":"Cylinders","component_group":"Pneumatics","category":"Actuators","brand":"Metal Work"},{"product":"Handling","component_group":"Pneumatics","category":"Actuators","brand":"Metal Work"},{"product":"V-Lock","component_group":"Pneumatics","category":"Actuators","brand":"Metal Work"},{"product":"Hydro-pneumatics","component_group":"Pneumatics","category":"Actuators","brand":"Metal Work"},{"product":"Electrical actuators","component_group":"Pneumatics","category":"Actuators","brand":"Metal Work"},{"product":"Valves","component_group":"Pneumatics","category":"Valves","brand":"Metal Work"},{"product":"Valve Islands and Fieldbus","component_group":"Pneumatics","category":"Valves","brand":"Metal Work"},{"product":"Multi-fluid process valves","component_group":"Pneumatics","category":"Valves","brand":"Metal Work"},{"product":"Syntesi","component_group":"Pneumatics","category":"Air treatment","brand":"Metal Work"},{"product":"Bit","component_group":"Pneumatics","category":"Air treatment","brand":"Metal Work"},{"product":"Skillair","component_group":"Pneumatics","category":"Air treatment","brand":"Metal Work"},{"product":"New Deal","component_group":"Pneumatics","category":"Air treatment","brand":"Metal Work"},{"product":"One","component_group":"Pneumatics","category":"Air treatment","brand":"Metal Work"},{"product":"Precision Regulation and Pressure Control","component_group":"Pneumatics","category":"Air treatment","brand":"Metal Work"},{"product":"Push-In Fittings","component_group":"Pneumatics","category":"Pneumatic Fittings","brand":"Metal Work"},{"product":"Fitting Series","component_group":"Pneumatics","category":"Pneumatic Fittings","brand":"Metal Work"},{"product":"Stainless Steel Fittings","component_group":"Pneumatics","category":"Pneumatic Fittings","brand":"Metal Work"},{"product":"Push-In Fittings UNF or NPT Thread and Inch Pipes","component_group":"Pneumatics","category":"Pneumatic Fittings","brand":"Metal Work"},{"product":"Copper Tubing","component_group":"Pneumatics","category":"Pneumatic Tubing","brand":"Alfanumatic"},{"product":"Area Gripping Systems and End Effectors","component_group":"Robotics","category":"Grippers","brand":"Schmalz"},{"product":"Special Grippers","component_group":"Robotics","category":"Grippers","brand":"Schmalz"},{"product":"Modular Gripper System","component_group":"Robotics","category":"Grippers","brand":"Schmalz"},{"product":"Vacuum suction cups","component_group":"Vacuum Technology","category":"Vacuum Cups","brand":"Schmalz"},{"product":"Mounting elements","component_group":"Vacuum Technology","category":"Vacuum Cups","brand":"Schmalz"},{"product":"Vacuum generators","component_group":"Vacuum Technology","category":"Vacuum Generators","brand":"Schmalz"},{"product":"Handling Sets","component_group":"Vacuum Technology","category":"Vacuum Lifters","brand":"Schmalz"},{"product":"Vision & Handling Sets","component_group":"Vacuum Technology","category":"Vacuum Lifters","brand":"Schmalz"},{"product":"Vacuum Tube Lifters Jumbo","component_group":"Vacuum Technology","category":"Vacuum Lifters","brand":"Schmalz"},{"product":"Vacuum Lifting Device VacuMaster","component_group":"Vacuum Technology","category":"Vacuum Lifters","brand":"Schmalz"},{"product":"Crane Systems and Jib Cranes","component_group":"Vacuum Technology","category":"Vacuum Lifters","brand":"Schmalz"},{"product":"Valve technology","component_group":"Vacuum Technology","category":"Vacuum Accessories","brand":"Schmalz"},{"product":"Switches and system monitoring","component_group":"Vacuum Technology","category":"Vacuum Accessories","brand":"Schmalz"},{"product":"Filters and connectors","component_group":"Vacuum Technology","category":"Vacuum Accessories","brand":"Schmalz"},{"product":"Gaskets & Jointing","component_group":"Gaskets & Packing","category":"Gaskets & Jointing","brand":"Talustech"},{"product":"Gland Packing","component_group":"Gaskets & Packing","category":"Gland Packing","brand":"Talustech"},{"product":"Semi Open Fronted Containers","component_group":"Plastic bins","category":"Plastic bins","brand":"Teknostore"},{"product":"Louvered Panels","component_group":"Plastic bins","category":"Plastic bins","brand":"Teknostore"},{"product":"Finger Gripper","component_group":"Robotics","category":"Grippers","brand":"OnRobot"},{"product":"Palletiser Gripper","component_group":"Robotics","category":"Grippers","brand":"OnRobot"},{"product":"Magnetic Gripper","component_group":"Robotics","category":"Grippers","brand":"OnRobot"},{"product":"Single Pad Gripper","component_group":"Robotics","category":"Grippers","brand":"OnRobot"},{"product":"Vacuum Gripper","component_group":"Robotics","category":"Grippers","brand":"OnRobot"},{"product":"Soft Gripper","component_group":"Robotics","category":"Grippers","brand":"OnRobot"},{"product":"OnRobot Eyes","component_group":"Robotics","category":"Grippers","brand":"OnRobot"},{"product":"OnRobot Screwdriver","component_group":"Robotics","category":"Grippers","brand":"OnRobot"},{"product":"OnRobot Sander","component_group":"Robotics","category":"Grippers","brand":"OnRobot"},{"product":"HEX 6-Axis Force/Torque Sensor","component_group":"Robotics","category":"Grippers","brand":"OnRobot"},{"product":"Robot Elevator","component_group":"Robotics","category":"Grippers","brand":"OnRobot"},{"product":"Quick changer","component_group":"Robotics","category":"Grippers","brand":"OnRobot"},{"product":"OnRobot Accessories","component_group":"Robotics","category":"Grippers","brand":"OnRobot"},{"product":"Mech-Eye Industrial 3D Camera","component_group":"Robotics","category":"AI Vision systems","brand":"Mech-Mind"},{"product":"Mech-Vision Graphical Machine Vision Software","component_group":"Robotics","category":"AI Vision systems","brand":"Mech-Mind"},{"product":"Mech-Viz Intelligent Robot Programming Environment","component_group":"Robotics","category":"AI Vision systems","brand":"Mech-Mind"},{"product":"AS-Interface Master/Gateways","component_group":"AS Interface","category":"AS Interface","brand":"Bihl & Wiedemann"},{"product":"AS-Interface Modules","component_group":"AS Interface","category":"AS Interface","brand":"Bihl & Wiedemann"},{"product":"Safety Components","component_group":"AS Interface","category":"AS Interface","brand":"Bihl & Wiedemann"},{"product":"Software","component_group":"AS Interface","category":"AS Interface","brand":"Bihl & Wiedemann"},{"product":"Accessories","component_group":"AS Interface","category":"AS Interface","brand":"Bihl & Wiedemann"},{"product":"Pallet Roller Conveyors","component_group":"Pallet Conveyors","category":"Pallet Roller Conveyors","brand":"Acme"},{"product":"Pallet Chain Conveyors","component_group":"Pallet Conveyors","category":"Pallet Chain Conveyors","brand":"Acme"},{"product":"Pallet Roller/Chain Side Transfers","component_group":"Pallet Conveyors","category":"Pallet Roller/Chain Side Transfers","brand":"Acme"},{"product":"Pallet Roller/Chain Turntables","component_group":"Pallet Conveyors","category":"Pallet Roller/Chain Turntables","brand":"Acme"},{"product":"Pallet Lift Station","component_group":"Pallet Lifts","category":"Pallet Lift Station","brand":"Acme"},{"product":"Pallet Lift","component_group":"Pallet Lifts","category":"Pallet Lift","brand":"Acme"},{"product":"High Speed Lift","component_group":"Pallet Lifts","category":"High Speed Lift","brand":"Acme"},{"product":"Pallet RGV - Rail Guided Vehicles","component_group":"RGV - Rail Guided Vehicles","category":"Pallet RGV - Rail Guided Vehicles","brand":"Acme"},{"product":"Pallet In-trailer conveyor","component_group":"Automated truck (un)loading","category":"Pallet In-trailer conveyor","brand":"Acme"},{"product":"Pallet Truck Docking station","component_group":"Automated truck (un)loading","category":"Pallet Truck Docking station","brand":"Acme"},{"product":"Pallet AGV","component_group":"AGV - Automated Guided Vehicles","category":"Pallet AGV","brand":"Acme"},{"product":"Stacker Crane","component_group":"Pallet AS/RS","category":"Stacker Crane","brand":"Acme"},{"product":"Kanghar (Mother & Child)","component_group":"Pallet AS/RS","category":"Kanghar (Mother & Child)","brand":"Acme"},{"product":"Radio Shuttle","component_group":"Pallet AS/RS","category":"Radio Shuttle","brand":"Acme"},{"product":"Heavy Load Shuttle","component_group":"Pallet AS/RS","category":"Heavy Load Shuttle","brand":"Acme"},{"product":"Selective pallet racking","component_group":"Racking","category":"Selective pallet racking","brand":"Acme"},{"product":"Drive-in pallet racking","component_group":"Racking","category":"Drive-in pallet racking","brand":"Acme"},{"product":"Shuttle storage","component_group":"Racking","category":"Shuttle storage","brand":"Acme"},{"product":"Pallet Stoppers","component_group":"Pallet Accessories","category":"Pallet Stoppers","brand":"Acme"},{"product":"Pallet Infeed Stations","component_group":"Pallet Accessories","category":"Pallet Infeed Stations","brand":"Acme"},{"product":"Pallet Label Scanners","component_group":"Pallet Accessories","category":"Pallet Label Scanners","brand":"Acme"},{"product":"Pallet Label Printers","component_group":"Pallet Accessories","category":"Pallet Label Printers","brand":"Acme"},{"product":"Pallet Shape Controls","component_group":"Pallet Accessories","category":"Pallet Shape Controls","brand":"Acme"},{"product":"Pallet Weighing Stations","component_group":"Pallet Accessories","category":"Pallet Weighing Stations","brand":"Acme"},{"product":"Pallet Wrapping Machines","component_group":"Pallet Accessories","category":"Pallet Wrapping Machines","brand":"Acme"},{"product":"Pallet Stacker / Destacker","component_group":"Pallet Accessories","category":"Pallet Stacker / Destacker","brand":"Acme"},{"product":"Pallet Check Station","component_group":"Pallet Accessories","category":"Pallet Check Station","brand":"Acme"},{"product":"Case Roller Conveyor","component_group":"Case Conveyors","category":"Case Roller Conveyor","brand":"Acme"},{"product":"Case Belt Conveyor","component_group":"Case Conveyors","category":"Case Belt Conveyor","brand":"Acme"},{"product":"Case Conveyor Diverter","component_group":"Case Conveyors","category":"Case Conveyor Diverter","brand":"Acme"},{"product":"Case Conveyor Roller Curve","component_group":"Case Conveyors","category":"Case Conveyor Roller Curve","brand":"Acme"},{"product":"Case Conveyor Roller Merge","component_group":"Case Conveyors","category":"Case Conveyor Roller Merge","brand":"Acme"},{"product":"Case Conveyor Push/Puller","component_group":"Case Conveyors","category":"Case Conveyor Push/Puller","brand":"Acme"},{"product":"Case Conveyor Infeed Turbo Roller","component_group":"Case Conveyors","category":"Case Conveyor Infeed Turbo Roller","brand":"Acme"},{"product":"Case Conveyor Belt Curve","component_group":"Case Conveyors","category":"Case Conveyor Belt Curve","brand":"Acme"},{"product":"Case Conveyor Belt Merge","component_group":"Case Conveyors","category":"Case Conveyor Belt Merge","brand":"Acme"},{"product":"Case Lift","component_group":"Case Conveyors","category":"Case Lift","brand":"Acme"},{"product":"Case Lift Station","component_group":"Case Lifts","category":"Case Lift Station","brand":"Acme"},{"product":"Case Single/ Double Lift","component_group":"Case Lifts","category":"Case Single/ Double Lift","brand":"Acme"},{"product":"Paternoster","component_group":"Case Lifts","category":"Paternoster","brand":"Acme"},{"product":"Spiral Case Lift","component_group":"Case Lifts","category":"Spiral Case Lift","brand":"Acme"},{"product":"Saluki (Miniload)","component_group":"Case AS/RS","category":"Saluki (Miniload)","brand":"Acme"},{"product":"Boltless shelving","component_group":"Shelving","category":"Boltless shelving","brand":"Acme"},{"product":"Plastic storage bins","component_group":"Shelving","category":"Plastic storage bins","brand":"Acme"},{"product":"Shelving","component_group":"Shelving","category":"Shelving","brand":"Acme"},{"product":"Vacuum Handling Solutions","component_group":"Manual Handling Systems","category":"Vacuum Handling Solutions","brand":"Acme"},{"product":"Case Shape Control","component_group":"Case Accessories","category":"Case Shape Control","brand":"Acme"},{"product":"Case Weight Control","component_group":"Case Accessories","category":"Case Weight Control","brand":"Acme"},{"product":"Case Height Control","component_group":"Case Accessories","category":"Case Height Control","brand":"Acme"},{"product":"Case Label Printers","component_group":"Case Accessories","category":"Case Label Printers","brand":"Acme"},{"product":"Carton Erectors","component_group":"Case Accessories","category":"Carton Erectors","brand":"Acme"},{"product":"Carton Sealers","component_group":"Case Accessories","category":"Carton Sealers","brand":"Acme"},{"product":"Case Scanners","component_group":"Case Accessories","category":"Case Scanners","brand":"Acme"},{"product":"WMS","component_group":"IT Solutions","category":"WMS","brand":"Acme"},{"product":"WCS / WES","component_group":"IT Solutions","category":"WCS / WES","brand":"Acme"},{"product":"SCADA","component_group":"Control Systems","category":"SCADA","brand":"Acme"},{"product":"PLC","component_group":"Control Systems","category":"PLC","brand":"Acme"},{"product":"Pick by Light","component_group":"Pick by Light","category":"Pick by Light","brand":"Acme"},{"product":"Colour Picking","component_group":"Goods-to-person","category":"Colour Picking","brand":"Acme"},{"product":"Work Stations","component_group":"Goods-to-person","category":"Work Stations","brand":"Acme"},{"product":"AI Vision systems","component_group":"Robotics","category":"AI Vision systems","brand":"Acme"},{"product":"Cobots","component_group":"Robotics","category":"Cobots","brand":"Acme"},{"product":"Grippers","component_group":"Robotics","category":"Grippers","brand":"Acme"},{"product":"Robotic Layer Sortation","component_group":"Robotics","category":"Robotic Layer Sortation","brand":"Acme"},{"product":"Push Tray Sorter","component_group":"Push Tray Sorter","category":"Push Tray Sorter","brand":"Acme"},{"product":"Low Speed Sortation","component_group":"Low Speed Sortation","category":"Low Speed Sortation (popup)","brand":"Acme"},{"product":"Pusher Sorter","component_group":"Pusher Sorter","category":"Pusher Sorter","brand":"Acme"}]';

        $products = json_decode($json);
        $categories = ProductsCategoriesEntryModel::all()->keyBy('title')->toArray();
        $groups = ProductsComponentsGroupsEntryModel::all()->keyBy('title')->toArray();
        $brands = BrandsModel::all()->keyBy('title')->toArray();


        foreach($products as $product) {
            $item = [
                'en' => [
                    'title' => $product->product,
                    'slug' =>  str_slug( $product->product, '-')
                ],
                'brand_id' => $brands[$product->brand]['id'],
                'category_id' => $categories[$product->category]['id'],
                'component_group_id' => $groups[$product->component_group]['id'],
            ];
            $this->productsModel->create($item );
            //exit('done');
        }

    }
}
