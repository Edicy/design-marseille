<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="{{ site.static_asset_host }}/libs/picturefill/latest/picturefill.min.js"></script>
<script type="text/javascript">
    	   $(function() {       
		        $('.lang-inner').click(function(e) {
						if($('.lang-bubble').css('display') == 'none')
						{
							var w = $(this).outerWidth(),
								menu_w = 110;
								left = ((w - menu_w)/2);

							$('.lang-bubble').addClass('open-lang').css('left', left + 'px');
						}
						else
						{
		                    $('.lang-bubble').removeClass('open-lang');
						}
				});
				$(document).click(function(e) {
					if($(e.target).closest('.langmenu').length == 0)
					{
						$('.lang-bubble').removeClass('open-lang');
					}
				});

		});
</script>
{% if site.search.enabled %}
    <script type="text/javascript" src="{{ site.static_asset_host }}/assets/site_search/3.0/site_search.js"></script>
    <script type="text/javascript">
        var edys_site_search_options = {
    	    texts: { noresults: "{{ "search_noresults"|lc }}" },
            default_stylesheet_enabled: false
}
</script>
{% endif %}
{% unless editmode %}{{site.analytics}}{% endunless %}