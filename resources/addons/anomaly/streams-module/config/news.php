<?php
return [
    'news' => [
        'form' => [
            'buttons' => [
                'cancel',
                //'versions',
                'view' => [
                    'enabled' => 'edit',
                    'target'  => '_blank',
                    'href'        => function($entry){ return ($entry->category ? $entry->publicUrl : false); },
                ]
            ],
        ],
        'table' => [
            'columns' => [
                'title',
                'slug',
                'category',
                'image',
                'entry.enabled.toggle' => [
                    'is_safe' => true
                ]

            ],
            'options' => [
                'limit' => 25,
            ],

            'buttons' => [
                'edit',
                'view' => [
                    'target'  => '_blank',
                    'href'        => function($entry){ return ($entry->publicUrl); },
                ]
            ],
            'filters' => [
                'title',
                'category',
                'enabled'
            ],
        ]
    ]
];
