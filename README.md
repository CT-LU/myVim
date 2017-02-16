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
   if(tab) , for(tab), switch(tab), do(tab), while(tab) will automatically show as below
   
  for (int i = 0; i < count; i++) {
           
  }
   
  if (true) {
           
  }
   
  switch (/* variable */) {
     case :
                 
     break;
     default:
                 
 }
 
 do {
         
 } while (/* condition */);
 
 21 while (/* condition */) {
 22         
 23 } 
   
