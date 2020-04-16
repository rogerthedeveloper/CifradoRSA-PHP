<nav class="navbar navbar-inverse">
    <div class="container-fluid">

        <!-- Brand and toggle get grouped for better mobile display -->

        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div id="header-title">CIFRADO ASIMÉTRICO</div>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <ul class="nav navbar-nav">
                <li id="section_Dashboard"><a href="../app/dashboard.php"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span> Mensajes <span class="sr-only">(current)</span></a></li>

                <?php if(in_array(Security::$permission, $permissions->reportes)): ?>       

                <li id="section_Administración" class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span> Administración <span class="caret"></span></a>
                    <ul class="dropdown-menu">

                        <?php

                        $files = glob('../administracion/*.php', GLOB_BRACE);
                        foreach($files as $file):

                            $name = ucfirst(substr(basename($file), 0, -4));

                            ?>

                            <li id="<?php echo $name; ?>"><a href="<?php echo $file; ?>"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span> <?php echo $name; ?></a></li>

                        <?php endforeach; ?>

                        <?php if(!$files): ?>

                            <li><a href="#"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Crear</a></li>

                        <?php endif; ?>

                    </ul>
                </li>

            <?php endif; ?>


            </ul>

            <ul class="nav navbar-nav navbar-right">

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Opciones <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#" onclick="supportInfo()"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span> Soporte</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a class="btnLogout"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> Salir</a></li>
                    </ul>
                </li>

            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>