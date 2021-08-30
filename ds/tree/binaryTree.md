# 1. 二叉树的定义
    定义：一个有穷的结点集合，可由根结点和其左子树TL和右子树TR的两个不相交的二叉树组成

## 常见的特殊二叉树
    1. 斜二叉树(Skewed Binary Tree)
    2. 完美二叉树(Perfect Binary Tree)/满二叉树(Full Binary Tree）
    3. 完全二叉树

## 2. 二叉树的几个重要性质
    1. 一个二叉树第 i 层的最大结点数为： 2^(i-1)， i >= 1。
    2. 深度为k的二叉树有最大结点总数为： 2^k-1， k >= 1 
    3. 对任何非空二叉树 T，若n0表示叶结点的个数、 n2是度为2的非叶结点个数，那么两者满足关系n0 = n2 +1

## 3. 操作集
    1. Boolean IsEmpty( BinTree BT )： 判别BT是否为空；
    2. void Traversal( BinTree BT )：遍历，按某顺序访问每个结点；
    3. BinTree CreatBinTree( )：创建一个二叉树。

## 4. 常用遍历方法
    1. void PreOrderTraversal( BinTree BT )： 先序----根、左子树、右子树；
    2. void InOrderTraversal( BinTree BT )： 中序---左子树、根、右子树；
    3. void PostOrderTraversal( BinTree BT )： 后序---左子树、右子树、根
    4. void LevelOrderTraversal( BinTree BT )： 层次遍历，从上到下、从左到右

## 5. 二叉树的存储结构
    1. 顺序结构（数组）
        适合完全二叉树
        1. 非根结点（序号 i > 1）的父结点的序号是 i/2;
        2. 结点（序号为 i ）的左孩子结点的序号是 2i，（若2 i <= n，否则没有左孩子） ;
        3. 结点（序号为 i ）的右孩子结点的序号是 2i+1，（若2 i +1<= n，否则没有右孩子） ;

    2. 链式结构
        struct TreeNode{
            ElementType Data;
            BinTree Left;
            BinTree Right;
        }


# 2. 二叉树的遍历
    1.先序
    2. 中序
    3. 后序
    4. 层次

    5. 非递归遍历
    