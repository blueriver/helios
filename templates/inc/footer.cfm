<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
		<!-- Footer -->
			<div id="footer">
				<div class="container">
					<div class="row">
						
						<!-- Tweets -->
							<section class="4u">
								<header>
									<h2 class="fa fa-twitter circled solo"><span>Tweets</span></h2>
								</header>
								<ul class="divided">
									<li>
										<article class="tweet">
											Amet nullam fringilla nibh nulla convallis tique ante sociis accumsan.
											<span class="timestamp">5 minutes ago</span>
										</article>
									</li>
									<li>
										<article class="tweet">
											Hendrerit rutrum quisque.
											<span class="timestamp">30 minutes ago</span>
										</article>
									</li>
									<li>
										<article class="tweet">
											Curabitur donec nulla massa laoreet nibh. Lorem praesent montes.
											<span class="timestamp">3 hours ago</span>
										</article>
									</li>
									<li>
										<article class="tweet">
											Lacus natoque cras rhoncus curae dignissim ultricies. Convallis orci aliquet.
											<span class="timestamp">5 hours ago</span>
										</article>
									</li>
								</ul>
							</section>

						<!-- Posts -->
							<section class="4u">
								<header>
									<h2 class="fa fa-file circled solo"><span>Posts</span></h2>
								</header>
								<ul class="divided">
									<li>
										<article class="post stub">
											<header>
												<h3><a href="##">Nisl fermentum integer</a></h3>
											</header>
											<span class="timestamp">3 hours ago</span>
										</article>
									</li>
									<li>
										<article class="post stub">
											<header>
												<h3><a href="##">Phasellus portitor lorem</a></h3>
											</header>
											<span class="timestamp">6 hours ago</span>
										</article>
									</li>
									<li>
										<article class="post stub">
											<header>
												<h3><a href="##">Magna tempus consequat</a></h3>
											</header>
											<span class="timestamp">Yesterday</span>
										</article>
									</li>
									<li>
										<article class="post stub">
											<header>
												<h3><a href="##">Feugiat lorem ipsum</a></h3>
											</header>
											<span class="timestamp">2 days ago</span>
										</article>
									</li>
								</ul>
							</section>

						<!-- Photos -->
							<section class="4u">
								<header>
									<h2 class="fa fa-camera circled solo"><span>Photos</span></h2>
								</header>
								<div class="row quarter no-collapse">
									<div class="6u">
										<a href="http://mdomaradzki.deviantart.com/art/Air-Lounge-385212062" class="image full"><img src="#$.siteConfig('themeAssetPath')#/images/pic10.jpg" alt="" /></a>
									</div>
									<div class="6u">
										<a href="http://mdomaradzki.deviantart.com/art/Paris-City-Streets-II-382623606" class="image full"><img src="#$.siteConfig('themeAssetPath')#/images/pic11.jpg" alt="" /></a>
									</div>
								</div>
								<div class="row quarter no-collapse">
									<div class="6u">
										<a href="http://mdomaradzki.deviantart.com/art/Trainride-Visions-383309985" class="image full"><img src="#$.siteConfig('themeAssetPath')#/images/pic12.jpg" alt="" /></a>
									</div>
									<div class="6u">
										<a href="http://mdomaradzki.deviantart.com/art/Paris-Metro-382623851" class="image full"><img src="#$.siteConfig('themeAssetPath')#/images/pic13.jpg" alt="" /></a>
									</div>
								</div>
								<div class="row quarter no-collapse">
									<div class="6u">
										<a href="http://mdomaradzki.deviantart.com/art/Cliffs-of-Coogee-II-366961860" class="image full"><img src="#$.siteConfig('themeAssetPath')#/images/pic14.jpg" alt="" /></a>
									</div>
									<div class="6u">
										<a href="http://mdomaradzki.deviantart.com/art/Stormy-Coast-VII-366561367" class="image full"><img src="#$.siteConfig('themeAssetPath')#/images/pic15.jpg" alt="" /></a>
									</div>
								</div>
							</section>

					</div>
					<hr />
					<div class="row">
						<div class="12u">
							
							<!-- Contact -->
								<section class="contact">
									<header>
										<h3>Get in touch</h3>
									</header>
									<p>3195 Zinfandel Drive, Building G, Suite 21<br />
									Rancho Cordova, CA 95670, USA</p>
									<p>+1(916)608-8608</p>
									<ul class="icons">
										<li><a href="http://twitter.com/muracms" class="fa fa-twitter solo"><span>Twitter</span></a></li>
										<li><a href="https://www.facebook.com/muracms" class="fa fa-facebook solo"><span>Facebook</span></a></li>
										<li><a href="https://groups.google.com/forum/##!forum/mura-cms-developers" class="fa fa-google-plus solo"><span>Google+</span></a></li>
										<li><a href="http://www.linkedin.com/groups/Mura-CMS-Developers-1883780" class="fa fa-linkedin solo"><span>Linkedin</span></a></li>
										<li><a href="mailto:info@getmura.com" class="fa fa-envelope solo"><span>Email</span></a></li>
									</ul>
									<!--- #$.dspComponent('[ Footer ] Get in touch')# --->
								</section>
							
							<!-- Copyright -->
								<div class="copyright">
									<ul class="menu">
										<li>&copy; #Year(Now())# #HTMLEditFormat($.siteConfig('site'))#. All rights reserved.</li>
										<li>Design: <a href="http://html5up.net/">HTML5 UP</a></li>
										<li>Powered by: <a href="http://www.getmura.com">Mura CMS</a></li>
									</ul>
								</div>
							
						</div>
					
					</div>
				</div>
			</div>

	</body>
</html>
</cfoutput>