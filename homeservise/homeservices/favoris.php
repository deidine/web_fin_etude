<?php
    include_once "scripts/checklogin.php";
    include_once "include/header.php";
    include_once "scripts/DB.php";

    if (!check($_SESSION['username'])) {
        header('Location: logout.php');
        exit();
    }

    $stmt = DB::query("SELECT * FROM commande");

    $providers = $stmt->fetchAll(PDO::FETCH_OBJ);

    include_once "msg/managehall.php";
?>
<div class="container" style="margin-top: 30px; margin-bottom: 60px;">
    <div class="table-responsive">
        <table class="table">
            <tr>
                <th>id commende</th>
                <th>id utulisateur</th>
                <th>id fournisseur</th>
                <th>date_de_commande</th>
                <th>location</th>
                <th>satut commende</th>
              
                <th>Action</th>
            </tr>
            <?php foreach ($providers as $provider): ?>
            <tr>
                
            
                <td><?= $provider->idc; ?>
                </td>
                <td><?= $provider->id_user; ?>
                </td>
                <td>
                    <?= $provider->id_fourniseur; ?><br>
                  </td>
                <td>   
                    <?= $provider->date_de_commande; ?><br>
                  </td>
                  <td><?= $provider->location; ?>
                </td>
                <td><?= $provider->stutus; ?>
                </td>
              
                <td>
                    <form action="deletehall.php" method="post">
                        <input type="hidden" name="id"
                            value="<?= $provider->com_id ;?>">
                        <button type="submit" name="remove" class="btn btn-danger btn-block">Remove</a>
                    </form>
                </td>
            </tr>
            <?php endforeach; ?>
        </table>
    </div>
</div>

<?php include_once "include/footer.php";
