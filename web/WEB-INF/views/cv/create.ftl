<#include "/layout/head.ftl">
<#include "/layout/navigation.ftl">
<#include "/layout/fieldsets.ftl">

<div class="container">
	<form class="form-horizontal" method="POST">
		<div class="row-fluid">
			<section id="editor-personal" class="span6">
				<header><h2>Personal</h2></header>
				<@fieldsetPersonal firstName="strajk"/>
			</section>

			<section id="editor-address" class="span6">
				<header><h2>Address</h2></header>
				<@fieldsetAddress />
			</section>
		</div>

		<section id="editor-contacts">
			<header><h2>Contacts
				<a class="btn btn-mini template-trigger-add" rel="phone" href="#"><i class="icon icon-plus"></i> phone</a>
				<a class="btn btn-mini template-trigger-add" rel="email" href="#"><i class="icon icon-plus"></i> email</a>
				<a class="btn btn-mini template-trigger-add" rel="website" href="#"><i class="icon icon-plus"></i> website</a>
			</h2></header>
			<div class="placeholder">

			</div>
			<div class="hide">
				<div class="template" data-trigger="phone"><@fieldsetContactPhone /></div>
				<div class="template" data-trigger="email"><@fieldsetContactEmail /></div>
				<div class="template" data-trigger="website"><@fieldsetContactWebsite /></div>
			</div>
		</section>

		<#--
	   <section id="editor-works">
		   <header><h2>Contacts</h2></header>
		   <@fieldsetWorks />
	   </section>

	   <section id="editor-educations">
		   <header><h2>Educations</h2></header>
		   <@fieldsetEducations />
	   </section>

	   <section id="editor-skills">
		   <header><h2>Skills</h2></header>
		   <@fieldsetSkills />
	   </section>

	   <section id="editor-languages">
		   <header><h2>Languages</h2></header>
		   <@fieldsetLanguages />
	   </section>
	   -->

		<div class="form-actions">
			<button type="submit" class="btn btn-primary">Save</button>
			<button class="btn">Cancel</button>
		</div>
   </form>
</div>
<#include "/layout/debug.ftl">
<#include "/layout/footer.ftl">
<#include "/layout/foot.ftl">