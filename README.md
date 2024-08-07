<h1>Minecraft Server</h1>

Minecraft Server: versão 1.21 Fabric

Autor: https://github.com/JoaoPedroRMatias

<h2>Explicando a construção</h2>

<p>Esse servidor foi construido usando de base o Fabric no qual é uma cadeia de ferramentas modding leve e experimental para Minecraft.</p>

<p>O mesmo distribui em seu site um arquivo de instalação do servidor, porém, aqui no meu Github estou disponibilizando ele já extraido e pronto para uso, já configurado para tanto usuários com o jogo original e pirata jogarem juntos.</p>

<h2>Observação</h2>

<p>No diretório /mods é possivel colocar os mods que quiser ao servidor (o nome por si só já diz tudo, porém, vale lembrar que todos os jogadores precisam ter o mesmo arquivo do mod em seus jogos pessoais para funcionar perfeitamente).</p>

<p>Entrando na pasta é possivel ver dois arquivos "fabric-api-0.100.7+1.21.jar" e "architectury-13.0.4-fabric.jar", o Fabric API é uma API leve e modular que fornece ganchos comuns e medidas de intercompatibilidade utilizadas por mods usando a cadeia de ferramentas Fabric, e o Architectury é uma API intermediária destinada a facilitar o desenvolvimento de mods multiplataforma.</p>

<br>
<h1>Iniciando Docker</h1>

<p>Criar imagem:</p>

```
docker build -t minecraft-server .
```

<p>Iniciar container:</p>

```
docker run -d -p 25565:25565 --name minecraft-server minecraft-server
```
<br>
<h1>Ngrok</h1>
<p>No caso de não possuir um IP publico para hospedar seu servidor, um boa opção é usar o Ngrok.</p>
<p>Após fazer seu download, vá para pasta em que se encontra o arquivo shell do Ngrok ou chame ele no terminal. E inicie o servidor com o comando:</p>

```
sudo ./ngrok tcp 25565
```

<p>Como resultado teremos essas informações:</p>
<img src="./img/ngrok.jpeg">
</div>

<p>O domínio que será usado para entrar no servidor está em "Forwarding", e é passado dentro do jogo como mostra no exemplo desta forma: 0.tcp.sa.ngrok.io:10552</p>

