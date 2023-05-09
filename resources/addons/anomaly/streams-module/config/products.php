<?php
//return [];
//return [];
return [
    'products' => [
        'form' => [
            'buttons' => [
                'cancel',
                'versions',
                'view' => [
                    'enabled' => 'edit',
                    'target'  => '_blank',
                    'href'        => function($entry){ return ($entry->publicUrl); },
                ]
            ],
            'sections' => [
                'form' => [

                    'tabs' => [
                        'info' => [
                            'title' => 'Main info',
                            'fields' => [
                                'title',
                                'slug',
                                'brand',
                                'category',
                                'component_group',
                                'gallery',
                                'description',
                                'prod_hidden',
                                'enabled'
                                //'product_variations'
                            ]
                        ],
                        'whitepapers' => [
                            'title' => 'Whitepapers',
                            'fields' => [
                                'whitepapers_en'
                            ]
                        ],
                        'variations' => [
                            'title' => 'Variations',
                            'fields' => [
                                'product_variations'
                            ]
                        ],
                        'seo' => [
                            'title' => 'SEO',
                            'fields' => [
                                'meta_title',
                                'meta_description'
                            ]
                        ]
                    ]

                ],

            ],
            'assets' => [
                'styles.css' => [
                    'np.module.psi::css/admin-custom.css',
                ]
            ]
        ],

        'table' => [
            'columns' => [
                'title',
                'brand',
                'category',
                'component_group',
                'entry.enabled.toggle' => [
                    'is_safe' => true
                ]

            ],
            //'ajax ' => true,
            'options' => [
                'limit' => 25,
            ],
            // 'options' => [
            //     'title' => 'My awesome table!',
            //     'table_view' => 'module::my/custom/table'
            // ],
            'buttons' => [
                // 'load' => [
                //     'href' => 'admin/variables/versions/{entry.id}?group={request.route.parameters.id}',
                // ],

                'edit',
                'view' => [
                    'target'  => '_blank',
                    'href'        => function($entry){ return ($entry->publicUrl); },
                ]
            ],
            'filters' => [
                'brand',
                'category',
                'component_group'
            ],
            'assets' => [
                'styles.css' => [
                    'np.module.psi::css/admin-custom.css',
                ]
            ]
            //'columns' => []
        ]
    ]
];
