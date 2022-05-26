<?php
include_once "scripts/checklogin.php";
include_once "include/header.php";
include_once "scripts/DB.php";

if (!check($_SESSION['username'])) {
    header('Location: logout.php');
    exit();
}
$sql="SELECT * from commande where idc=?";
$bookings = DB::query($sql,[$_GET['id']])->fetchAll(PDO::FETCH_OBJ);

if ($bookings === false) {
    header('Location: commande.php');
    exit();
}
?>
<div class="container" style="margin-top: 30px; margin-bottom: 60px;">
    <div class="card">
        <div class="card-body">
            <div class="card-title">
                <h3 class="text-center">Update les stauts <command></h3>
            </div>
            <hr>

            <form action="upcom.php" method="post" >
            <div class="form-group" style="margin:atuo;">
                <label for="">status commande</label><br>
                    <select name="etats" style="width: 500px;height: 50px;font-size:20px ">
                    <option value="<?= $bookings[0]->stutus;?>">
                            <?= $bookings[0]->stutus;?>
</option>
<option value="Terminer">
Terminer
</option>

<option value="En cours">
En cours
</option>
<option value="En etant">
En etant
</option>

</select>

</div>

                <div class="form-group">
                <label for="">id</label>
                    <input value="<?= $bookings[0]->idc; ?>" 
                        name="id" type="number" class="form-control" >
                </div><div class="form-group">
                 <label for="">commande</label>
                    <input value="<?= $bookings[0]->Commande; ?>" 
                        name="name" type="text" class="form-control" placeholder="Name" required>
                </div> 
               
               

                <button style="margin-top: 20px;" class="btn btn-success btn-block" type="submit" name="modifier"
                    id="register">modifier</button>
            </form>

        </div>
    </div>
</div>

<?php include_once "./include/footer.php";
