%pointer
%option noyywrap

%%

 /* ── Reglas ya implementadas ────────────────────────── */

 /* Constante octal: 0 seguido de dígitos octales (o solo 0) */
0[0-7]*         { printf("constante octal: %s\n", yytext); }

 /* Ignorar espacios, tabs y saltos de línea */
[ \t\n]         { }

 /* ── TODO: completar las siguientes reglas ──────────── */

 /* TODO 1 — Constante decimal (ej: 123, 456, 9)*/
 [1-9][0-9]*  { printf("constante decimal: %s\n", yytext); }
  

 /* TODO 2 — Constante hexadecimal (ej: 0x1A, 0xFF, 0xDEAD)*/
 0[xX][0-9a-fA-F]+  { printf("constante hexadecimal: %s\n", yytext); } 
     

 /* TODO 3 — Identificador (ej: miVariable, _count, hola_mundo) */
 [a-zA-Z_][a-zA-Z0-9_]*  { printf("identificador: %s\n", yytext); } 
  

 /* TODO 4 — Comodín: cualquier carácter no reconocido por las reglas anteriores */
.  { printf("caracter no reconocido: %s\n", yytext); }
     

%%

int main(void) {
    yylex();
    return 0;
}
