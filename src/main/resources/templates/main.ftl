<#import "parts/common.ftl" as c>




<@c.page>
    <form method="post" action="/main">
        <div class="container mt-2">
            <div class="row">
                <div class="col-md-3">
                    <nav class="nav">
                        <ul class="metisFolder metismenu">
                            <li>
                                <a href="#"><span class="fa fa-fw fa-folder-o"></span> Root</a>
                                <ul>
                                    <li><a href="#"><span class="fa fa-fw fa-file"></span> Child</a></li>
                                    <ul>
                                        <li><a href="#"><span class="fa fa-fw fa-folder-o"></span> GrandChild</a></li>
                                        <ul>
                                            <li><a href="#"><span class="fa fa-fw fa-file"></span> Child</a></li>
                                        </ul>
                                    </ul>
                                    <li><a href="#"><span class="fa fa-fw fa-file-o"></span> File 2</a></li>
                                    <li><a href="#"><span class="fa fa-fw fa-file-zip-o"></span> File zip</a></li>
                                    <li><a href="#"><span class="fa fa-fw fa-file"></span> File 1</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </form>
</@c.page>
<script>
    $('.metisFolder').metisMenu({
        toggle: false
    })
</script>