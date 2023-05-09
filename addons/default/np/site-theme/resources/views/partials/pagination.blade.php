@if ($paginator->hasPages())
    <div class="small-12 large-4 large-offset-8 columns nopad pagination-list">
        <ul>
            {{-- Previous Page Link --}}
            @if ($paginator->onFirstPage())
                <li class="pagination--prev page-disabled">
                    <a></a>
                </li>
            @else
                <li class="pagination--prev">
                    <a href="{{ $paginator->previousPageUrl() }}" rel="prev"></a>
                </li>
            @endif

            @foreach ($elements as $element)
                {{-- "Three Dots" Separator --}}
                @if (is_string($element))
                    <li>...</li>
                @endif
                {{-- Array Of Links --}}
                @if (is_array($element))
                    @foreach ($element as $page => $url)
                        @if ($page == $paginator->currentPage())
                            <li class="current"><span>{{ $page }}</span></li>
                        @else
                            <li><a href="{{ $url }}">{{ $page }}</a></li>
                        @endif
                    @endforeach
                @endif
            @endforeach

            @if ($paginator->hasMorePages())
                <li class="pagination--next">
                    <a href="{{ $paginator->nextPageUrl() }}" rel="next"></a>
                </li>
            @else
                <li class="pagination--next">
                    <a></a>
                </li>
            @endif
        </ul>
    </div>
@endif
