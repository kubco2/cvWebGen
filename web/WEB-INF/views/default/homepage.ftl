<!-- Required model: recentPublicCvs,  -->

<#include "/layout/head.ftl">
<#include "/layout/navigation.ftl">
<div class="container">

    <section id="homepage-intro" class="hero-unit">
        <h1>Create, manage, export&nbsp;&&nbsp;print CVs.</h1>
        <p>Online CV maker, manager and exporter. Created as project for FI MUNI, PV138.</p>
    </section>

    <section id="homepage-features" class="row">
        <div class="span3">
            <h4>Open-source</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla tellus nulla, accumsan vitae congue dapibus, blandit fermentum nulla. Pellentesque tincidunt congue urna nec eleifend.</p>
        </div>
        <div class="span3">
            <h4>Java & BaseX & XML</h4>
            <p>Aliquam erat volutpat. Maecenas suscipit, dolor quis tristique interdum, velit purus aliquam ipsum, sit amet auctor nulla leo vel leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.</p>
        </div>
        <div class="span3">
            <h4>Privacy</h4>
            <p>Sed vel libero eu turpis fringilla ornare sit amet quis arcu. In adipiscing molestie lorem vel egestas. Aliquam lobortis velit sit amet orci eleifend porttitor. Maecenas elementum sem at ante gravida facilisis.</p>
        </div>
        <div class="span3">
            <h4>Export <span class="label label-info">LaTeX</span></h4>
            <p>Proin ut sem et arcu hendrerit placerat. Ut luctus faucibus commodo. Etiam dignissim lacus quis odio pellentesque dictum. Integer ac risus mi, sit amet volutpat nisl. Cras volutpat consequat odio, semper rhoncus urna ultrices vel.</p>
        </div>
    </section>

    <div class="row">
        <section id="homepage-activity" class="span7">
            <header><h2>Recently generated CVs</h2></header>
            <table class="table table-striped">
                <thead><tr><th>#</th><th>Name</th><th>Preview</th></tr></thead>
                <tbody>
                <#if (recentPublicCvs)??>
                    <#list recentCvs as cv>
                        <tr><td>${cv.id}</td><td>${cv.user}</td><td>${cv.preview}</td></tr>
                    </#list>
                <#else>
                    <tr><td colspan="3">No data</td></tr>
                </#if>
                </tbody>
            </table>
        </section>
        <div class="span5">
            <section id="homepage-create">
                <header><h2>Create CV</h2></header>
                <div class="well">
                    <p class="intro">Creating CV is <strong>very easy and intuitive</strong>, fast, doesn't require no kind of registration and your data will be safe.</p>
                    <form class="form-horizontal">
                        <div class="control-group">
                            <label class="control-label" for="homepage-create-name">Name</label>
                            <div class="controls"><input type="text" id="homepage-create-name"></div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="homepage-create-email">E-mail</label>
                            <div class="controls"><div class="input-prepend"><span class="add-on">@</span><input type="text" id="homepage-create-email"></div><p class="help-block">(Required) Can NOT be changed later. Used for access to your CV.</p></div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Privacy</label>
                            <div class="controls">
                                <label class="radio"><dl><dt><input type="radio" name="homepage-create-privacy" value="public" checked="">Public</dt><dd>Anyone can search for and view</dd></dl></label>
                                <label class="radio"><dl><dt><input type="radio" name="homepage-create-privacy" value="unlisted" checked="">Unlisted</dt><dd>Just who you decide to share.</dd></dl></label>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label"></label>
                            <div class="controls"><label class="checkbox"><input type="checkbox" name="homepage-create-agreement" value="agree">I agree with <a href="#TODO" title="Read full terms on GitHub">terms</a>.</label></div>
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">Create CV</button>
                        </div>
                    </form>
                </div>
            </section>
            <section id="homepage-forget">
                <header><h3>Looking for your already created CV?</h3></header>
                <div class="well">
                    <p class="intro">Enter your e-mail. We will send you all of your CVs.</p>
                    <form>
                        <div class="control-group">
                            <div class="controls">
                                <div class="input-prepend input-append"><span class="add-on">@</span><input id="homepage-forget-email" type="text"><button class="btn" type="button">Go!</button>                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
        </div>
    </div>

</div>
<#include "/layout/debug.ftl">
<#include "/layout/footer.ftl">
<#include "/layout/foot.ftl">