# !/bin/bash

yum update - y

# Instalando o Apache
yum install -y httpd

# Criando pagina HTML no diretorio '/var/www/html/'
cat << EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servidor Web </title>
    <link rel="stylesheet" href="styles.css" >
</head>
<body>
    <div class="container" id="container">
        <h1>
            Bem-vindo ao Servidor Web 
        </h1>
        <h2> 
            Esta é página HTML referente à atividade de Projeto 03 do módulo 1 do curso de DevOps
            do Santander Coders.
            <br>

            Aluno : Caio Jordan Oliveira de Siqueira
        </h2>
        <h3>
            Este servidor está sendo executado em uma instância Amazon Linux
            configurada automaticamente via User Data utilizando servidor Apache.
        </h3>
        
</body>
</html>
EOF

# Criando o arquivo CSS
cat <<EOF > /var/www/html/styles.css
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background: url('https://ada-site-frontend.s3.sa-east-1.amazonaws.com/home/Thumb-Ada.png') no-repeat center center fixed;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

#container {
    background-color: rgba(53, 92, 53, 0.8);
    color: rgb(114, 212, 1);
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(8, 88, 8, 0.5);
}
EOF

# Iniciando o Apache
systemctl start httpd
system enable httpd