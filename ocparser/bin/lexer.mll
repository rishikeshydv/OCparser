{
  open Lexing
  open Parser

  exception SyntaxError of string
  
  let next_line lexbuf = 
    let pos = lexbuf.lex_cur_p in
    lexbuf.lex_cur_p <- {
      pos with pos_bol = lexbuf.lex_curr_pos;
               pos_lnum = pos.pos_lnum + 1
    }


}
