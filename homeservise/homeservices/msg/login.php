<?php if (isset($_GET['msg']) && $_GET['msg'] == "failed"): ?>
<div class="container" style="margin-top: 30px">
    <div class="alert alert-danger">
        <h4>Login</h3>
            <p>le nom ou le mots de pass est incorect</p>
            <?php echo"<script>setTimeout(function(){ window.location='./';},2000);</script>";?>
    </div>
</div>
<?php endif;
