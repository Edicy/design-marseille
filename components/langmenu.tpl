{% if editmode %}
<div class="langmenu">
    <div class="lang-inner"><span class="langmenu_inner">{% for language in site.languages %}{%if language.selected? %}{{language.title}}{% endif %}{% endfor %}</span></div>
            <div class="lang-bubble">
                <div class="bubble-arrow"></div>
                    <div class="bubble-content">
						<ul>
                        {% for language in site.languages %}
							<li><a class="{{language.code}}" href="{{language.url}}">{{language.title}}</a></li>
                        {% endfor %}
                        {% if editmode %}<li>{% languageadd %}</li>{% endif %}
						</ul>
					</div>
			 </div>
</div>
{% else %}{% if site.has_many_languages? %}
<div class="langmenu">
    <div class="lang-inner"><span class="langmenu_inner">{% for language in site.languages %}{%if language.selected? %}{{language.title}}{% endif %}{% endfor %}</span></div>
    		<div class="lang-bubble">
                <div class="bubble-arrow"></div>
                    <div class="bubble-content">
						<ul>
                        {% for language in site.languages %}
							<li><a class="{{language.code}}" href="{{language.url}}">{{language.title}}</a></li>
                        {% endfor %}
						</ul>
					</div>
			 </div>
</div>
{% endif %}{% endif %}