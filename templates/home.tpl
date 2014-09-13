<!-- IF usersettings.themeMod -->
<style>
.category-item {
	position: relative !important;
	top: 0 !important;
	left: 0 !important;
}

.home .category-item .category-header
{
	text-align: left !important;
	padding: 10px 15px !important;
	min-height: 0 !important;
	display: flex !important;
}

.home .category-item .category-box:after, .home .category-item .category-box:before
{
	display: none;
}
</style>

<div class="row home" itemscope itemtype="http://www.schema.org/ItemList">
	<div class="col-lg-9 col-sm-12" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
		<div class="row">
			<!-- BEGIN categories -->
			<div class="category-item" data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">
				<meta itemprop="name" content="{categories.name}">

				<div class="category-icon">

					<!-- IF categories.link -->
					<a style="color: {categories.color};" href="{categories.link}" itemprop="url" target="_blank">
					<!-- ELSE -->
					<a style="color: {categories.color};" href="{relative_path}/category/{categories.slug}" itemprop="url">
					<!-- ENDIF categories.link -->
						<div id="category-{categories.cid}" class="category-header category-header-image-{categories.imageClass}" style="<!-- IF categories.backgroundImage -->background-image: url({categories.backgroundImage});<!-- ENDIF categories.backgroundImage -->
								<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->
								color: {categories.color};
							"
						>
							<!-- IF !categories.link -->
							<span class="badge {categories.unread-class}" style="top: 5px;"><i class="fa fa-book" data-toggle="tooltip" title="[[global:topics]]"></i> <span class="human-readable-number" title="{categories.topic_count}">{categories.topic_count}</span>&nbsp; <i class="fa fa-pencil" data-toggle="tooltip" title="[[global:posts]]"></i> <span class="human-readable-number" title="{categories.post_count}">{categories.post_count}</span></span>
							<!-- ENDIF !categories.link -->

							<!-- IF categories.icon -->
							<div style="width: 60px; margin-right: 5px; text-align: center;"><i class="fa {categories.icon} fa-3x" style="vertical-align: middle;"></i></div>
							<!-- ENDIF categories.icon -->
							
							<div>
								<span style="font-size: 24px; font-weight: bold; margin: 0 0 0 5px;"><!-- IF categories.icon --><i class="fa {categories.icon} visible-xs-inline"></i> <!-- ENDIF categories.icon -->{categories.name}</span>
								<div class="description" style="margin: " itemprop="description"> - {categories.description}</div>
							</div>
						</div>
					</a>
					
					<!-- IF usersettings.themeHomeShowPosts -->
					<div class="category-box">
						<!-- IF !categories.link -->
						<!-- BEGIN posts -->
						<div class="post-preview clearfix">
							<div class="post-preview-content">
								<strong><a href="{relative_path}/topic/{categories.posts.topic.slug}">{categories.posts.topic.title}</a></strong>

								<a style="color: {categories.color};" href="<!-- IF categories.posts.user.userslug -->{relative_path}/user/{categories.posts.user.userslug}<!-- ELSE -->#<!-- ENDIF categories.posts.user.userslug-->">
									<img src="{categories.posts.user.picture}" title="{categories.posts.user.username}" class="pull-left user-img" />
								</a>
								<div class="content" style="max-height: 50px;">
								{categories.posts.content}
								</div>
								<p class="fade-out" style="top: 50px"></p>
							</div>
							<span class="pull-right footer">
								<span class="timeago" title="{categories.posts.relativeTime}"></span> by <a href="<!-- IF categories.posts.user.userslug -->{relative_path}/user/{categories.posts.user.userslug}<!-- ELSE -->#<!-- ENDIF categories.posts.user.userslug-->">{categories.posts.user.username}</a> &bull;
								<a href="{relative_path}/topic/{categories.posts.topic.slug}<!-- IF categories.posts.index -->/{categories.posts.index}<!-- ENDIF categories.posts.index -->">[[global:read_more]]</a>
							</span>
						</div>
						<!-- END posts -->
						<!-- ENDIF !categories.link -->
					</div>
					<!-- ENDIF usersettings.themeHomeShowPosts -->
				</div>
			</div>
			<!-- END categories -->
		</div>
	</div>

	<div widget-area="sidebar" class="col-lg-3 col-sm-12"></div>
</div>
<!-- ENDIF usersettings.themeMod -->
<!-- IF !usersettings.themeMod -->
<div class="row home" itemscope itemtype="http://www.schema.org/ItemList">
	<div class="col-lg-9 col-sm-12" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
		<div class="row">
			<!-- BEGIN categories -->
			<div class="<!-- IF categories.class -->{categories.class}<!-- ELSE -->col-md-3 col-sm-6 col-xs-12<!-- ENDIF categories.class --> category-item" data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">
				<meta itemprop="name" content="{categories.name}">

				<div class="category-icon">

					<!-- IF categories.link -->
					<a style="color: {categories.color};" href="{categories.link}" itemprop="url" target="_blank">
					<!-- ELSE -->
					<a style="color: {categories.color};" href="{relative_path}/category/{categories.slug}" itemprop="url">
					<!-- ENDIF categories.link -->
						<div
							id="category-{categories.cid}" class="category-header category-header-image-{categories.imageClass}"
							style="
								<!-- IF categories.backgroundImage -->background-image: url({categories.backgroundImage});<!-- ENDIF categories.backgroundImage -->
								<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->
								color: {categories.color};
							"
						>
							<!-- IF !categories.link -->
							<span class="badge {categories.unread-class}"><i class="fa fa-book" data-toggle="tooltip" title="[[global:topics]]"></i> <span class="human-readable-number" title="{categories.topic_count}">{categories.topic_count}</span>&nbsp; <i class="fa fa-pencil" data-toggle="tooltip" title="[[global:posts]]"></i> <span class="human-readable-number" title="{categories.post_count}">{categories.post_count}</span></span>
							<!-- ENDIF !categories.link -->

							<!-- IF categories.icon -->
							<div><i class="fa {categories.icon} fa-4x"></i></div>
							<!-- ENDIF categories.icon -->
						</div>
					</a>

					<div class="category-box">
						<div class="category-info">
							<!-- IF categories.link -->
							<a href="{categories.link}" itemprop="url" target="_blank">
							<!-- ELSE -->
							<a href="{relative_path}/category/{categories.slug}" itemprop="url">
							<!-- ENDIF categories.link-->
								<h4><!-- IF categories.icon --><i class="fa {categories.icon} visible-xs-inline"></i> <!-- ENDIF categories.icon -->{categories.name}</h4>
							</a>
							<div class="description" itemprop="description">{categories.description}</div>
						</div>
						<!-- IF !categories.link -->
						<!-- IF usersettings.themeHomeShowPosts -->
						<!-- BEGIN posts -->
						<div class="post-preview clearfix">
							<div class="post-preview-content">
								<strong><a href="{relative_path}/topic/{categories.posts.topic.slug}">{categories.posts.topic.title}</a></strong>
								<hr/>
								<a style="color: {categories.color};" href="<!-- IF categories.posts.user.userslug -->{relative_path}/user/{categories.posts.user.userslug}<!-- ELSE -->#<!-- ENDIF categories.posts.user.userslug-->">
									<img src="{categories.posts.user.picture}" title="{categories.posts.user.username}" class="pull-left user-img" />
								</a>
								<div class="content">
								{categories.posts.content}
								</div>
								<p class="fade-out"></p>
							</div>
							<span class="pull-right footer">
								<span class="timeago" title="{categories.posts.relativeTime}"></span> &bull;
								<a href="{relative_path}/topic/{categories.posts.topic.slug}<!-- IF categories.posts.index -->/{categories.posts.index}<!-- ENDIF categories.posts.index -->">[[global:read_more]]</a>
							</span>
						</div>
						<!-- END posts -->
						<!-- ENDIF usersettings.themeHomeShowPosts -->
						<!-- ENDIF !categories.link -->
					</div>
				</div>
			</div>
			<!-- END categories -->
		</div>
	</div>

	<div widget-area="sidebar" class="col-lg-3 col-sm-12"></div>
</div>
<!-- ENDIF !usersettings.themeMod -->

