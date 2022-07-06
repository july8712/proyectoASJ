<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <span>Especie: </span>
        <?php echo htmlspecialchars($_POST['especie'])?>
    <br>
    <span>Sexo: </span>
        <?php echo htmlspecialchars($_POST['sexo'])?>
    <br>
    <span>Edad: </span>
        <?php echo htmlspecialchars($_POST['edad'])?>
    <br>
    <span>Color: </span>
        <?php echo htmlspecialchars($_POST['color'])?>
    <br>
    <span>Manchas: </span>
        <?php echo htmlspecialchars($_POST['manchas'])?>
</body>
</html>