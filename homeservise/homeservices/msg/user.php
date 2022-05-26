<?php if (isset($_GET['msg'])): ?>
<div class="container" style="margin-top: 30px">
    <?php if ($_GET['msg'] == 'success'): ?>
    <div class="alert alert-success">
        <h3>Success</h3>
        <p>l'user suprimer avec succes</p>
        <?php echo "<script> setTimeout(function(){ document.location='users.php';},1000);</script>";
        ?>
    </div>
    <?php elseif ($_GET['msg'] == 'failed'): ?>
    <div class="alert alert-danger">
        <h3>Failure</h3>
        <p>Probleme de supression d'user essaiyer une autre fois</p>
        <?php echo "<script> setTimeout(function(){ document.location='users.php';},3000);</script>";
        ?>
    </div>
    <?php endif; ?>
</div>
<?php endif;
