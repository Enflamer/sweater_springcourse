<#import "parts/common.ftl" as c>




<@c.page>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>Sweater</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="metisMenu.min.css" rel="stylesheet"/>
    <link href="mm-folder.css" rel="stylesheet"/>
</head>
<body>
<a  class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Function list
</a>

<div class="collapse" id="collapseExample">
    <div class="form-group">
        <form method="post" action="/main">
            <input class="form-control" type="text" name="text" placeholder="Тэг">
            <input class="form-control" type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button class="btn btn-primary" type="submit">Добавить</button>
        </form>
        <form method="post" action="/main1">
            <input class="form-control" type="text" name="text" placeholder="Тэг">
            <input class="form-control" type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button class="btn btn-primary" type="submit">Удалить</button>
        </form>
    </div>
</div>
    <form method="get" action="/main">
        <div class="container mt-2">
            <div class="row">
                <div class="col-md-3">
                    <nav class="nav">
                        <ul class="metisFolder metismenu">
                            <li>
                                <a href="#"><span class="fa fa-fw fa-folder-o"></span> Root </a>
                                <ul>
                                    <#list list>
                                        <#items as x>
                                            <div class="out overout">
                                                <li><a href="#"><span class="fa fa-fw fa-file"></span>${x}</a></li>
                                                <div class="in">
                                                </div>
                                            </div>
                                        </#items>
                                    </#list>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="metisMenu.min.js"></script>
    <script>
        $('.metisFolder').metisMenu({
            toggle: false
        })
    </script>
    <script>
        var i = 0;
        $( "div.overout" )
            .mouseover(function() {
                i += 1;
                $( this ).find( "span" ).attr('class', 'fa fa-fw fa-file text-success');
               // document.getElementById("1").style.visibility = "visible";
            })
            .mouseout(function() {
                $( this ).find( "span" ).attr('class', 'fa fa-fw fa-file');
                //document.getElementById("1").style.visibility = "hidden";
            });

    </script>



</body>
</html>
</@c.page>

