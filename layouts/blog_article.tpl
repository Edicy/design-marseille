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
					        {% addbutton class="add-article" %}
                            <div class="article">
                                <h2>{% editable article.title %} <span class="date-format2">{{article.created_at | format_date:"short"}}</span></h2> 
						        <p>{{article.author.name}}{% unless article.comments_count == 0 %} / <a href="{{article.url}}#comments">{{"comments_for_count"|lc}}: <span class="edy-site-blog-comments-count">
       {{article.comments_count}}</span></a>{% endunless %}</p>
                                <div class="excerpt">{% editable article.excerpt %}</div>
                                {% editable article.body %}
                            </div>
                            {% unless article.comments_count == 0 %}
                            <div id="comments">
                            <h3>{{"comments_for_count"|lc}}: <span class="edy-site-blog-comments-count">{{article.comments_count}}</span></h3>
                                <ul>{% for comment in article.comments %}
                                    <li class="edy-site-blog-comment">
                                        <p><span class="comment-author">{{comment.author}}</span> <span class="comment-date">{{comment.created_at | format_date:"short"}}</span> {% removebutton %}</p>
                                        {{comment.body}}
                                    </li>{% endfor %}
                                </ul>
                            </div>
	                        <!-- //comments -->
                            {% endunless %}
                            <div id="comment-form"> 
                                <h3>{{"add_a_comment"|lc}}</h3>
                                {% commentform %}
                                {% unless comment.valid? %}
                                <ul>{% for error in comment.errors %}
                                <li>{{ error | lc }}</li>
                                {% endfor %}
                                </ul>
                                {% endunless %}
                                <div class="form_field">
                                    <label for="commentform-name">{{"name"|lc}}</label>
                                    <input type="text" class="form_field_textfield" id="commentform-name" value="{{comment.author}}" name="comment[author]" />
                                </div>
                                <div class="form_field">
                                    <label for="commentform-email">{{"email"|lc}}</label>
                                    <input type="text" class="form_field_textfield" id="commentform-email" value="{{comment.author_email}}" name="comment[author_email]" />
                                </div>
                                <div class="form_field">
                                    <label for="commentform-body">{{"comment"|lc}}</label>
                                    <textarea class="form_field_textarea" rows="4" cols="5" name="comment[body]">{{comment.body}}</textarea>
                                </div>
                                <div class="form_submit">
                                    <input type="submit" class="submit" value="{{"submit"|lc}}" />
                                </div>
                                {% endcommentform %}
                            </div>
                            <!-- //comment-form -->
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