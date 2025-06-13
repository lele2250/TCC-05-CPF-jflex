%%
%class cpf
%standalone
%unicode

%%

// CPF no formato ###.###.###-##
[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}
    { System.out.println("CPF válido: " + yytext()); }

// Qualquer sequência parecida, mas inválida
[0-9\.\-]+
    { System.out.println("Erro: CPF inválido -> " + yytext()); }

// Ignorar espaços, tabs e quebras de linha
[\t\r\n]+  { /* ignora */ }

// Outros caracteres
.   { System.out.println("Ignorado: " + yytext()); }
