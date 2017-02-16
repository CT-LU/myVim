# myVim

### Install:
1. Please move .vimrc and .vim to your home.
2. After you open vim, you should execute :BundleUpdate for the first time.

### How to use:
1. F2 : copen a window and automatically type :grep 
2. F3 : NERD_tree for going to specific path
3. F4 : List all symbols under editing file 
4. Ctr + p : file/buffer finder(ctrlp) 
5. key mapping:<br />
   g h : mapping ctr + w  h<br />
   g j : mapping ctr + w  j<br />
   g k : mapping ctr + w  k<br />
   g l : mapping ctr + w  l<br />
6. You can try a couple of complete:<br />
   Ctr + ] , Ctr + n, Ctr + p
   if(tab) , for(tab), switch(tab), do(tab), while(tab) will show as below
   
  1 for (int i = 0; i < count; i++) {
  2         
  3 }
  4 
  5 if (true) {
  6         $
  7 }
  8 
  9 switch (/* variable */) {
 10         case /* variable case */:
 11                 
 12                 break;
 13         default:
 14                 
 15 }
 16 
 17 do {
 18         $
 19 } while (/* condition */);
 20 
 21 while (/* condition */) {
 22         $
 23 } 
   
