

typedef enum token {
	END, UNKNOWN,

	NEWLINE,

	INT_LIT, DBL_LIT,

	ID,

	MULT, DIV, ADD, SUB
} token;

typedef struct tok_value
{
	token type;
	int val;
}


typedef struct lex_token
{
	tok_value tok;
	unsigned line;
	unsigned pos;
}

typedef struct lexer_state
{
	unsigned cur_line;
	unsigned cur_pos;
}

lex_token get_token();

void print_token(int token);
