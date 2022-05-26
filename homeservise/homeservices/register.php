<?php include_once "./include/header.php";
    include_once "include/header.php";
    include_once "scripts/checklogin.php";

if (!check($_SESSION['username'])) {
    header('Location: logout.php');
    exit();
}
?>

<?php include_once "msg/register.php"; ?>
<div class="container" style="margin-top: 30px; max-width: 800px;margin-bottom: 60px;">
    <div class="card">
        <div class="card-body">
            <div class="card-title">
                <h3 class="text-center">enregistrer les utilisateurs</h3>
            </div>
            <hr>


            <form action="scripts/register.php" method="post" enctype="multipart/form-data">
            <div class="form-group">
                    <label for="">nom</label>
                    <input id="name" name="name" type="text" class="form-control" placeholder="nom" required>
                </div>
                 <div class="form-group">
                    <label for="">prenom</label>
                    <input id="name" name="lname" type="text" class="form-control" placeholder="prenom" required>
                </div>

                <div class="form-group">
                    <label for="">tlephone</label>
                    <input id="contact"
                        name="contact" type="number" class="form-control" placeholder="telephone" minlength="10"
                        maxlength="10" required>
                </div>
                <div class="form-group">
                    <label for="">Photo(Square Size)</label>
                    <input id="photo" name="photo" type="file" class="form-control-file" placeholder="selectionner un Photo 1"
                        required>
                </div>

        

                <div class="form-group">
                    <label for="">Password</label>
                    <input id="password" name="password" type="password" class="form-control"
                        placeholder="Enterer 6 Character Password" minlength="4" required>
                </div>

                <button style="margin-top: 30px;" class="btn btn-block btn-primary" type="submit" name="register"
                    id="register">EnRegister</button>
            </form>

        </div>
    </div>
</div>

<?php include_once "./include/footer.php";
