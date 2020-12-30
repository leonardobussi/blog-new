Recurso
- Usuários - criar tabela e modelo de usuários
        - adicionar validações
        * nome de usuário deve estar presente e exclusivo, mínimo 3 no máximo 25
        * o endereço de e-mail deve estar presente e exclusivo, no máximo 105
        * e-mail deve ter um formato de e-mail válido, verifique com regex de e-mail

Associações
- Um para muitos
  entre usuários e artigos

REST para usuários

Autenticação
- Login usando senha segura

Restrição de ações
- Com base no estado conectado / desconectado

Segurança
- Funcionalidade do usuário administrador e nível de acesso