/* 
1- Explique a diferença entre desenvolvimento híbrido e multiplataforma.(5 pontos)
R: O desenvolvimento híbrido refere-se à criação de aplicações que podem ser executadas em várias plataformas
 (iOS, Android, Web) usando uma única base de código, geralmente escrita em HTML, CSS e JavaScript. 
 
 Já o desenvolvimento multiplataforma envolve a criação de aplicações nativas para diferentes 
 plataformas utilizando uma única linguagem de programação, como Dart no caso do Flutter, 
 permitindo acesso a APIs nativas e melhor desempenho. 
 
 2- Indique e descreva as vantagens do framework Flutter.(10 pontos)
 R: O Flutter oferece várias vantagens, incluindo:
- Desenvolvimento rápido com Hot Reload, permitindo ver as alterações em tempo real.
- Interface de usuário rica e personalizável com widgets pré-construídos.
- Suporte a múltiplas plataformas com uma única base de código, reduzindo o tempo e custo de desenvolvimento. 
- Alto desempenho, pois compila para código nativo.
1. Cross-platform (Multiplataforma)
2. Fast development (Desenvolvimento rápido)
3. User interface(Interface do usuário)
4. Open source (Código aberto)
5. Community (Comunidade)
6. Performance (Desempenho)

MfdUIopCP

 3- Explique a função do símbolo ? após o tipo de variável.(5 pontos)
R: O símbolo ? após o tipo de variável em Dart indica que a variável é opcional e pode ser nula. 
A variável pode conter um valor do tipo especificado ou o valor null, 
permitindo maior flexibilidade no tratamento de dados e evitando erros de execução relacionados 
a valores nulos.


// 4- Explique o que é o widget Scaffold e quais são os seus principais componentes.(5 pontos)
R: O widget Scaffold é um dos principais componentes do Flutter, fornecendo uma estrutura básica para a interface do usuário. Ele inclui componentes como AppBar (barra de título), Drawer (menu lateral), BottomNavigationBar (barra de navegação inferior) e FloatingActionButton (botão flutuante). O Scaffold facilita a criação de layouts consistentes e responsivos, permitindo que os desenvolvedores se concentrem na lógica da aplicação.

// 5- Explique o que é o widget StatelessWidget e quando deve ser utilizado.(5 pontos)  
// R: O widget StatelessWidget é um tipo de widget no Flutter que não possui estado mutável. Ele é utilizado quando a interface do usuário não precisa ser alterada após a sua construção, ou seja, quando os dados não mudam durante a execução da aplicação. É ideal para widgets que exibem informações estáticas ou que dependem apenas de dados fornecidos no momento da criação.

// 6- Explique o que é o widget StatefulWidget e quando deve ser utilizado.(5 pontos)
// R: O widget StatefulWidget é um tipo de widget no Flutter que possui estado mutável. Ele deve ser utilizado quando a interface do usuário precisa ser atualizada dinamicamente, ou seja, quando os dados podem mudar durante a execução da aplicação. O StatefulWidget permite que o desenvolvedor crie widgets que respondem a interações do usuário ou a mudanças de dados, atualizando a interface conforme necessário.

// 7- Explique o que é o widget FutureBuilder e como ele pode ser utilizado.(5 pontos)
// R: O widget FutureBuilder é um widget no Flutter que permite construir a interface do usuário com base no resultado de uma operação assíncrona, como uma chamada de API ou uma consulta ao banco de dados. Ele aceita um Future e constrói a interface com base no estado atual do Future (pendente, concluído com sucesso ou concluído com erro). Isso facilita o gerenciamento de operações assíncronas e a atualização da interface do usuário conforme os dados se tornam disponíveis.

// 8- Explique o que é o widget ListView e como ele pode ser utilizado.(5 pontos)
// R: O widget ListView é um widget no Flutter que permite exibir uma lista de itens roláveis. Ele é utilizado para criar listas longas e dinâmicas, onde os itens podem ser gerados de forma preguiçosa (lazy loading) para otimizar o desempenho. O ListView pode ser personalizado com diferentes tipos de itens, como ListTile, e pode ser combinado com outros widgets para criar interfaces complexas.


// 9- Explique o que é o widget Column e como ele pode ser utilizado.(5 pontos)
// R: O widget Column é um widget no Flutter que organiza seus filhos em uma coluna vertical. Ele é utilizado para criar layouts verticais, onde os widgets são dispostos um abaixo do outro. O Column pode ser combinado com outros widgets, como Row e Stack, para criar interfaces complexas e responsivas. É importante lembrar que o Column não rola por padrão, então se a lista de filhos for muito longa, pode ser necessário envolvê-lo em um widget ScrollView.

// 10- Explique o que é o widget Row e como ele pode ser utilizado.(5 pontos)
// R: O widget Row é um widget no Flutter que organiza seus filhos em uma linha horizontal. Ele é utilizado para criar layouts horizontais, onde os widgets são dispostos lado a lado. O Row pode ser combinado com outros widgets, como Column e Stack, para criar interfaces complexas e responsivas. Assim como o Column, o Row não rola por padrão, então se a lista de filhos for muito longa, pode ser necessário envolvê-lo em um widget ScrollView.

// 11- Explique o que é o widget Stack e como ele pode ser utilizado.(5 pontos) 
// R: O widget Stack é um widget no Flutter que permite sobrepor seus filhos, posicionando-os uns sobre os outros. Ele é utilizado para criar layouts complexos onde os widgets podem se sobrepor, como em casos de animações, sobreposições de imagens ou botões flutuantes. O Stack permite o posicionamento absoluto dos filhos usando o widget Positioned, oferecendo flexibilidade na criação de interfaces visuais dinâmicas.

// 12- Explique o que é o widget Container e quais são as suas principais propriedades.(5 pontos)
// R: O widget Container é um widget no Flutter que serve como um contêiner genérico para outros widgets. Ele pode ser utilizado para aplicar padding, margin, border, background color e outras propriedades de estilo aos seus filhos. As principais propriedades do Container incluem:
// - padding: espaço interno ao redor do filho.
// - margin: espaço externo ao redor do Container.
// - decoration: permite aplicar estilos como cor de fundo, bordas e sombras.
// - width e height: definem as dimensões do Container.
// - child: o widget filho que será exibido dentro do Container.

// 13- Explique o que é o widget Text e quais são as suas principais propriedades.(5 pontos)
// R: O widget Text é um widget no Flutter utilizado para exibir texto na interface do usuário. Ele aceita uma string como entrada e possui várias propriedades para personalizar a aparência do texto. As principais propriedades do Text incluem:
// - data: a string de texto a ser exibida.
// - style: permite definir o estilo do texto, como fonte, tamanho, cor e peso.
// - textAlign: alinha o texto dentro do widget, podendo ser left, right, center ou justify.
// - overflow: define como o texto deve se comportar quando ultrapassa os limites do widget, podendo ser ellipsis, fade ou clip.
// - maxLines: limita o número máximo de linhas que o texto pode ocupar.

// 14- Explique o que é o widget Image e como ele pode ser utilizado.(5 pontos)
// R: O widget Image é um widget no Flutter utilizado para exibir imagens na interface do usuário. Ele pode carregar imagens de várias fontes, como arquivos locais, URLs ou ativos do aplicativo. O Image pode ser personalizado com propriedades como:
// - image: define a fonte da imagem, que pode ser um AssetImage, NetworkImage ou FileImage.
// - fit: define como a imagem deve se ajustar ao espaço disponível, podendo ser contain, cover, fill, fitWidth, fitHeight ou none.
// - width e height: definem as dimensões da imagem.  

// 15- Explique o que é o widget Icon e como ele pode ser utilizado.(5 pontos)
// R: O widget Icon é um widget no Flutter utilizado para exibir ícones na interface do usuário. Ele pode ser utilizado para representar ações, estados ou categorias de forma visual. O Icon pode ser personalizado com propriedades como:
// - icon: define o ícone a ser exibido, que pode ser um ícone do Material Icons ou de outras fontes.
// - size: define o tamanho do ícone.
// - color: define a cor do ícone, podendo ser uma cor fixa ou herdada do tema.
// - semanticLabel: fornece uma descrição acessível do ícone para leitores de tela, melhorando a acessibilidade da aplicação.

// 16- Explique o que é o widget RaisedButton e como ele pode ser utilizado.(5 pontos)
// R: O widget RaisedButton é um widget no Flutter utilizado para criar botões elevados que respondem a toques do usuário. Ele é utilizado para ações que requerem interação, como enviar formulários ou navegar entre telas. O RaisedButton pode ser personalizado com propriedades como:
// - onPressed: define a função a ser executada quando o botão é pressionado.
// - child: o widget filho que será exibido dentro do botão, geralmente um texto ou ícone.
// - color: define a cor de fundo do botão.
// - textColor: define a cor do texto dentro do botão.
// - shape: define a forma do botão, podendo ser um RoundedRectangleBorder ou CircleBorder.

// 17- Explique o que é o widget FlatButton e como ele pode ser utilizado.(5 pontos)
// R: O widget FlatButton é um widget no Flutter utilizado para criar botões sem elevação, geralmente usados para ações secundárias ou menos importantes. Ele é utilizado para ações que requerem interação, como cancelar ou fechar diálogos. O FlatButton pode ser personalizado com propriedades como:
// - onPressed: define a função a ser executada quando o botão é pressionado.
// - child: o widget filho que será exibido dentro do botão, geralmente um texto ou ícone.
// - color: define a cor de fundo do botão.
// - textColor: define a cor do texto dentro do botão.
// - shape: define a forma do botão, podendo ser um RoundedRectangleBorder ou CircleBorder.

// 18- Explique o que é o widget FloatingActionButton e como ele pode ser utilizado.(5 pontos) 
// R: O widget FloatingActionButton é um widget no Flutter utilizado para criar um botão flutuante que geralmente representa a ação principal da aplicação. Ele é utilizado para ações importantes, como adicionar um novo item ou iniciar uma nova tarefa. O FloatingActionButton pode ser personalizado com propriedades como:
// - onPressed: define a função a ser executada quando o botão é pressionado.
// - child: o widget filho que será exibido dentro do botão, geralmente um ícone. 
// - backgroundColor: define a cor de fundo do botão.
// - foregroundColor: define a cor do ícone dentro do botão.
// - shape: define a forma do botão, podendo ser um RoundedRectangleBorder ou CircleBorder.

// 19- Explique o que é o widget AppBar e quais são os seus principais componentes.(5 pontos)
// R: O widget AppBar é um widget no Flutter utilizado para criar uma barra de aplicativo na parte superior da tela. Ele é utilizado para exibir o título da aplicação, ações e navegação. Os principais componentes do AppBar incluem:
// - title: o título da aplicação, geralmente um widget Text ou Image.
// - actions: uma lista de widgets que representam ações, como botões ou ícones, que aparecem no lado direito da barra.
// - leading: um widget que aparece no lado esquerdo da barra, geralmente um ícone de menu ou voltar.
// - bottom: um widget que aparece na parte inferior da AppBar, como uma TabBar ou um menu suspenso.
// - backgroundColor: define a cor de fundo da AppBar.

// 20- Explique o que é o widget Drawer e como ele pode ser utilizado.(5 pontos)    
// R: O widget Drawer é um widget no Flutter utilizado para criar um menu lateral que pode ser deslizado a partir da borda esquerda da tela. Ele é utilizado para navegação entre diferentes seções da aplicação, oferecendo uma maneira fácil de acessar funcionalidades adicionais. O Drawer pode conter uma lista de itens, como ListTile, e pode ser personalizado com propriedades como:
// - child: o widget filho que será exibido dentro do Drawer, geralmente uma lista de itens de navegação.
// - elevation: define a elevação do Drawer, criando uma sombra quando aberto.
// - backgroundColor: define a cor de fundo do Drawer.

// 21- Explique o que é o widget BottomNavigationBar e como ele pode ser utilizado.(5 pontos)
// R: O widget BottomNavigationBar é um widget no Flutter utilizado para criar uma barra de navegação na parte inferior da tela. Ele é utilizado para permitir que os usuários naveguem entre diferentes seções da aplicação de forma rápida e intuitiva. O BottomNavigationBar pode conter vários itens, cada um representando uma seção da aplicação, e pode ser personalizado com propriedades como:
// - items: uma lista de BottomNavigationBarItem que define os itens da barra de navegação.
// - currentIndex: o índice do item atualmente selecionado, utilizado para destacar o item ativo.
// - onTap: uma função que é chamada quando um item é selecionado, permitindo a navegação entre as seções.  
// - type: define o tipo de navegação, podendo ser fixed (itens sempre visíveis) ou shifting (itens aparecem e desaparecem conforme a navegação).

// 22- Explique o que é o widget Form e como ele pode ser utilizado.(5 pontos)
// R: O widget Form é um widget no Flutter utilizado para agrupar campos de entrada de dados, como TextFormField, Checkbox e Radio. Ele é utilizado para criar formulários que coletam informações do usuário, permitindo validação e gerenciamento de estado. O Form pode ser personalizado com propriedades como:
// - key: uma chave única para identificar o Form, permitindo o gerenciamento de estado.
// - autovalidateMode: define quando a validação deve ser executada, podendo ser onUserInteraction, always ou disabled.
// - child: o widget filho que será exibido dentro do Form, geralmente uma lista de campos de entrada.
// 23- Explique o que é o widget TextFormField e como ele pode ser utilizado.(5 pontos)

// R: O widget TextFormField é um widget no Flutter utilizado para criar campos de entrada de texto dentro de um formulário. Ele é utilizado para coletar informações do usuário, como nome, email ou senha, e pode ser personalizado com propriedades como:
// - decoration: define a aparência do campo, incluindo rótulo, ícone e borda.
// - keyboardType: define o tipo de teclado a ser exibido, como TextInputType.emailAddress ou TextInputType.number.
// - obscureText: um booleano que indica se o texto deve ser oculto, útil para campos de senha.
// - validator: uma função que valida o valor do campo, retornando uma mensagem de erro se a validação falhar.
// - onChanged: uma função que é chamada quando o valor do campo é alterado, permitindo o gerenciamento de estado.

// 24- Explique o que é o widget Checkbox e como ele pode ser utilizado.(5 pontos)
// R: O widget Checkbox é um widget no Flutter utilizado para criar caixas de seleção que permitem ao usuário escolher uma ou mais opções. Ele é utilizado em formulários e listas de opções, permitindo que o usuário selecione itens específicos. O Checkbox pode ser personalizado com propriedades como:
// - value: um booleano que indica se a caixa está marcada ou não.
// - onChanged: uma função que é chamada quando o estado da caixa é alterado, permitindo o gerenciamento de estado.
// - activeColor: define a cor do ícone quando a caixa está marcada.
// - checkColor: define a cor do ícone de seleção dentro da caixa.
// - tristate: um booleano que indica se a caixa pode ter três estados (marcado, desmarcado e indefinido), útil para opções que podem ser parcialmente selecionadas.

// 25- Explique o que é o widget Radio e como ele pode ser utilizado.(5 pontos)
// R: O widget Radio é um widget no Flutter utilizado para criar botões de opção que permitem ao usuário selecionar uma única opção de um grupo. Ele é utilizado em formulários e listas de opções, permitindo que o usuário escolha uma alternativa específica. O Radio pode ser personalizado com propriedades como:
// - value: o valor associado ao botão de opção, que será retornado quando selecionado.
// - groupValue: o valor do grupo de botões de opção, utilizado para determinar qual botão está selecionado.
// - onChanged: uma função que é chamada quando o botão é selecionado, permitindo o gerenciamento de estado.
// - activeColor: define a cor do ícone quando o botão está selecionado.
// - materialTapTargetSize: define o tamanho do alvo de toque do botão, podendo ser shrinkWrap (tamanho mínimo) ou padded (tamanho padrão).

 */