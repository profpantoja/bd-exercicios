# bd-exercicios
Repositório das listas de Exercícios da disciplina de <strong>Modelagem de Banco de Dados</strong>, <strong>Banco de Dados</strong> e <strong>Administração de Banco de Dados</strong>.

## Como Contribuir Nesse Repositório:

- **Requisitos**: você precisa ser aluno ou monitor da disciplina ou, ainda, trabalhar em algum projeto de pesquisa.
- **Criar uma Branch**: após clonar o projeto em alguma IDE, é preciso criar uma branch baseada em algumas das categorias abaixo, de acordo com a funcionalidade desenvolvida.

| Category        | Meaning                                                                     |
| --------------- | --------------------------------------------------------------------------- |
| `wip`           | for a work in progress                                                      |
| `feature`       | for adding, removing or modifying a feature                                 |
| `experimental`  | for experimenting something which is not an issue                           |
| `hotfix`        | for quickly fixing critical issues, usually with a temporary solution Cell  |
| `bugfix`        | for fixing a bug                                                            |

> Exemplo de criação de uma branch para resolução de uma lista de exercícios:
  ```
  git checkout -b wip-exercicios-14-ao-20
  ```

- **Adicionar os arquivos**: após a implementação das funcionalidades, adicione os arquivos alterados para prepará-los para confirmação e envio a este repositório.
> Exemplo de adição de todos os arquivos modificados:
  ```
  git add .
  ```

- **Realizar o commit localmente**: confirmar as modificações que precisam ser enviadas para serem avaliadas pelo responsável do repositório. Sempre adicione uma mensagem sobre o que foi realizado na confirmação.  
> Exemplo de um commit com uma mensagem:
  ```
  git commit -m "Uploading the new branch for the fixing a bug."
  ```

- **Efetuar o push**: envie suas modificações sempre que quiseres que tuas modificações sejam persistidas on-line no repositório e na branch criada anteriormente.
> Exemplo de como enviar as modificações confirmadas para o repositório:
  ```
  git push
  ```

- **Solicitar mesclagem**: para que as modificações sejam refletidas no branch principal (`main`), é necessaŕio realizar um `pull request`. Esta solicitação é responsável por informar a outras pessoas sobre as alterações feitas em uma ramificação de um repositório. 
> Utilize o GitHub para realizar esta etapa.
