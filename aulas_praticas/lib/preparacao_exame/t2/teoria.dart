/*
1- Explique o papel de Future, async e await em operações assíncronas no Flutter. Dê um exemplo de uso.
(8 Pontos)
Future, async e await são fundamentais para lidar com operações assíncronas no Flutter. O Future representa um valor que pode estar disponível agora ou no futuro, enquanto async e await são usados para escrever código assíncrono de forma mais legível.
O Future é uma abstração que representa um resultado de uma operação assíncrona. 
A palavra-chave async é usada para marcar uma função como assíncrona, permitindo o uso de await dentro dela. 
A palavra-chave await é usada para esperar a conclusão de um Future antes de continuar a execução do código.
Por exemplo, ao buscar dados de uma API, podemos usar Future para representar a resposta da requisição. A função que faz a requisição é marcada como async, e usamos await para esperar a resposta antes de processar os dados.
```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      // Processar os dados recebidos
    } else {
      throw Exception('Falha ao carregar dados');
    }
  } catch (e) {
    print('Erro: $e');
  }
}

2- Compare o armazenamento com SharedPreferences e o uso de arquivos locais (path_provider). Quando cada abordagem é mais indicada?
(8 Pontos)
SharedPreferences e path_provider são duas abordagens diferentes para armazenamento de dados no Flutter.
SharedPreferences é usado para armazenar dados simples, como configurações do usuário, preferências e pequenas quantidades de
 dados persistentes. É ideal para armazenar valores primitivos (como strings, inteiros e booleanos)
  de forma rápida e fácil, sem a necessidade de manipulação complexa.
O path_provider, por outro lado, é usado para acessar o sistema de arquivos local do dispositivo,
 permitindo o armazenamento de arquivos maiores e mais complexos, como imagens, documentos ou dados estruturados. 
 É mais indicado quando precisamos armazenar dados que não se encaixam bem no modelo chave-valor do SharedPreferences.
Por exemplo, se quisermos armazenar as preferências do usuário, como tema e idioma, podemos usar SharedPreferences. 
Se precisarmos salvar um arquivo de imagem ou um banco de dados local, o path_provider seria a escolha mais adequada.  

3- Quais são os principais serviços do Firebase e como eles podem ser integrados em um projecto Flutter?
(8 Pontos)
O Firebase oferece uma variedade de serviços que podem ser integrados em projetos Flutter, incluindo:
- Firebase Authentication: Para autenticação de usuários, suportando métodos como email/senha, Google, Facebook, entre outros.
- Cloud Firestore: Um banco de dados NoSQL em tempo real para armazenar e sincronizar dados entre usuários e dispositivos.
- Firebase Realtime Database: Um banco de dados em tempo real que permite a sincronização instantânea de dados entre clientes.
- Firebase Cloud Storage: Para armazenar e servir arquivos, como imagens e vídeos.
- Firebase Cloud Messaging: Para enviar notificações push para dispositivos móveis.

4- Por que a Arquitetura Limpa é considerada vantajosa para projetos de longo prazo? Dê exemplos de situações em que ela evita problemas comuns.
(8 Pontos)
A Arquitetura Limpa é vantajosa para projetos de longo prazo porque promove a separação de preocupações, 
facilitando a manutenção e evolução do código. Ela permite que diferentes camadas do aplicativo 
(como apresentação, domínio e dados) sejam desenvolvidas, testadas e modificadas independentemente.
Isso reduz o acoplamento entre componentes e melhora a testabilidade do código.
Por exemplo, se precisarmos alterar a lógica de negócios sem afetar a interface do usuário, 
podemos fazer isso facilmente na camada de domínio. Além disso, a Arquitetura Limpa facilita a
 substituição de tecnologias (como trocar um banco de dados) sem impactar outras partes do sistema,
  evitando problemas comuns como dependências rígidas e dificuldade de testes.


5- Qual a diferença entre autenticação com firebase_auth e um sistema de login customizado? Quais as vantagens de cada abordagem?
(8 Pontos)
A autenticação com firebase_auth oferece uma solução pronta e escalável para gerenciar usuários, suportando vários provedores de autenticação (como email/senha, Google, Facebook, etc.) com segurança e facilidade de integração. É ideal para projetos que precisam de uma solução rápida e confiável sem a necessidade de desenvolver um sistema de autenticação do zero.
Um sistema de login customizado, por outro lado, permite maior flexibilidade e controle sobre o processo de autenticação, 
podendo ser adaptado às necessidades específicas do projeto. 
No entanto, isso requer mais tempo e esforço para implementar e manter, além de exigir cuidados adicionais com segurança.

*/