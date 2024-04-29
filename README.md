# GM Dev - Notify

O `gmdev_notify` é um script gratuito e open-source desenvolvido pela GM Dev para proporcionar uma experiência de notificação elegante e eficiente no FiveM. Com uma interface limpa e minimalista, nossa notify garante que os jogadores recebam suas notificações de forma clara e organizada, aumentando o conforto visual durante o jogo.

## Demonstração
![Preview image](https://i.imgur.com/ubmMjkQ.gif)

## Recursos

- **Interface Limpa e Minimalista:** Notificações apresentadas de forma discreta, mantendo a imersão no jogo.
- **Stack de Notificações:** As notificações são empilhadas e agrupadas, permitindo uma visualização rápida e fácil.
- **Extensão da Stack:** Pressionando a tecla **`ALT`**, os jogadores podem estender a stack e visualizar todas as notificações em ordem.

## Utilização

1. **Recebendo Notificações:**
   - Quando uma notificação é enviada, ela será exibida na tela do jogador suavemente.

2. **Visualizando Notificações:**
   - Para visualizar as notificações empilhadas, pressione a tecla **`ALT`** durante o jogo.
   - As notificações serão estendidas, permitindo que você veja todas as notificações na stack.

## Instalação

1. Faça o download do script `gmdev_notify`.
2. Copie o script para a pasta de recursos do seu servidor FiveM.
3. Adicione `ensure gmdev_notify` ao seu arquivo `server.cfg` para garantir que o script seja carregado durante a inicialização do servidor.

## Compatibilidade

O `gmdev_notify` é compatível com todos os scripts que utilizam o evento **`Notify`** para enviar notificações, ou seja, a grande maioria dos scripts utilizados hoje em dia. Ele pode ser facilmente integrado em seu servidor, permitindo que você mantenha a mesma funcionalidade de notificação com uma interface mais elegante.

Além disso, oferecemos suporte ao evento **`GMDev_Notify`**, que permite uma personalização adicional das notificações, incluindo título e descrição. Embora não seja obrigatório utilizar este evento, recomendamos considerá-lo para uma experiência visual mais completa e agradável.

## Exemplo de Uso

```lua
-- Exemplo de como enviar uma notificação utilizando o evento "Notify"
TriggerClientEvent("Notify", source, "sucesso", "Mensagem", 3000) -- Quando chamado no lado server
TriggerEvent("Notify", "sucesso", "Mensagem", 3000) -- Quando chamado no lado client

-- Exemplo de como enviar uma notificação utilizando o evento "GMDev_Notify"
TriggerClientEvent("GMDev_Notify", source, "sucesso", "Título", "Descrição",  3000) -- Quando chamado no lado server
TriggerEvent("GMDev_Notify", "sucesso", "Título", "Descrição", 3000) -- Quando chamado no lado client
```

#
![GM Dev](https://i.imgur.com/ghdtKmx.png)

Gostou deste script? Conheça mais sobre a GM Dev, e junte-se à nossa comunidade no Discord para ficar por dentro das últimas novidades, receber suporte e interagir com outros desenvolvedores.

- **GM Dev:** [https://discord.gg/nBteuHPYgg](https://discord.gg/nBteuHPYgg)

## Licença

[MIT](https://raw.githubusercontent.com/guimilreu/gmdev_notify/main/LICENSE)
