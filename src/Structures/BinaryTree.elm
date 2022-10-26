module BinaryTree exposing (..)

type BTree a = Nil | Node a (BTree a) (BTree a)

insert : comparable -> BTree comparable -> BTree comparable
insert n tree = 
    case tree of 
        Nil -> Node n Nil Nil
        Node root left right -> 
            if n > root then 
                Node root left (insert n right)
            else if n < root then
                Node root (insert n left) right 
            else
                tree

fold : (b -> a -> b -> b) -> b -> BTree a -> b
fold caseNode caseNil tree = 
    let rec = fold caseNode caseNil
    in
    case tree of 
        Nil -> caseNil
        Node root leftTree rightTree -> caseNode (rec leftTree) root (rec rightTree)

map : (a -> b) -> BTree a -> BTree b
map f = fold (\leftTree root rightTree -> Node (f root) leftTree rightTree) (Nil)

contains : comparable -> BTree comparable -> Bool
contains n = fold (\lr r rr -> r == n || lr || rr) (False)

sum : BTree number -> number
sum tree = fold (\recleft root recright -> root + recleft + recright) (0) tree

inorder : BTree a -> List a
inorder tree = fold (\recleft root recright -> recleft ++ (root::recright)) ([]) tree

preorder : BTree a -> List a
preorder tree = fold (\recleft root recright -> root :: recleft ++ recright) ([]) tree

postorder : BTree a -> List a
postorder tree = fold (\recleft root recright -> recleft ++ recright ++ [root]) ([]) tree
