<!DOCTYPE html>
<html lang="{{page.language_code}}">
    <head>
    {% include "SiteHeader" %}
    {{blog.rss_link}}
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
                        {% content name="content-01" %}
			        </div>
			        <!-- //header -->	
			        <div id="content-wrap">
                        {% include "Submenu" %}
				        <div class="content clear">
                            {% if tags %}
                                <div class="tagged-list-header">
                                    <div class="header-tag-icon"></div>
                                    {% if tags == empty %}
                                        {{ "no_posts_tagged" | lc }}
                                    {% else %}
                                        {{ "posts_tagged" | lc }} '{{ tags | sort:"name" | map:"name" | join:"', '"}}'.
                                    {% endif %}
                                </div>
                            {% endif %}
                        
					        {% addbutton class="add-article" %}
                            
                            <div id="blog">
                            {% for article in articles %}
                            <div class="article">
    					        <div class="date">{{article.created_at | format_date:" %d.%m"}}</div>
						        <h2><a href="{{article.url}}">{{article.title}}</a></h2> 
						        <p>{{article.author.name}}{% unless article.comments_count == 0 %} / <a href="{{article.url}}#comments">{{"comments_for_count"|lc}}: <span class="edy-site-blog-comments-count">
       {{article.comments_count}}</span></a>{% endunless %}</p>
						        <div>{{article.excerpt}}</div>
						        <a href="{{article.url}}">{{"read_more"|lc}} →</a>
					        </div>
                            {% endfor %}
                            </div>
                            
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