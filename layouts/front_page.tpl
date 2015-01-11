<!DOCTYPE html>
<html lang="{{page.language_code}}">
    <head>
    {% include "SiteHeader" %}
    </head>
	<body id="front">
		<div id="wrap-outer">			
			<div id="wrap" class="clear">			
				<div id="top-bar" class="clear">
					{% include "Langmenu" %}
                    {% include "Search" %}
			    </div>
                {% include "Mainmenu" %}
                <div id="page-wrap" class="clear">
                    <div id="header">
				        <div id="logo" class="clear">{% editable site.header %}</div>
				        <h2 class="clear">{% content name="slogan" %}</h2>
                        {% if site.latest_articles.size > 0 %}{% include "News" %}{% else %}{% content name="sidebar" %}{% endif %}
			        </div>
			        <!-- //header -->	
			        <div id="content-wrap">
				        <div class="content clear" data-search-indexing-allowed="true">
					        {% content %}
				        </div>
				        <!-- //content -->
                        {% include "Footer" %}
			        </div>
			        <!-- //content-wrap -->
			    </div>
			    <!-- //page-wrap -->
                <div id="edicy">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div>
			</div>
			<!-- //wrap -->
		</div>
		<!-- //wrap-outer -->
        {% include "JS" %}
	</body>
</html>