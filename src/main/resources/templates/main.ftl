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

    <form method="get" action="/main">
        <div class="container mt-2">
            <div class="row">
                <div class="col-md-3">
                    <nav class="nav">
                        <ul class="metisFolder metismenu">
                            <li>
                                <a href="#"><span class="fa fa-fw fa-folder-o"></span> Root</a>
                                <ul >
                                    <li><a href="#"><span class="fa fa-fw fa-file"></span> Child</a></li>
                                    <ul >
                                        <li class="metisFolder metismenu"><a href="#"><span class="fa fa-fw fa-folder-o"></span> GrandChild</a></li>
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="metisMenu.min.js"></script>
    <script>
        $('.metisFolder').metisMenu({
            toggle: false
        })
    </script>
</body>
</html>
</@c.page>

