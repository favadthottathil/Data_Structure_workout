void main() {
  Bst bst = Bst();

  bst.insert(10);
  bst.insert(38);
  bst.insert(20);
  bst.insert(10000);
  bst.inorder();
}

class Node {
  int data;

  Node? left, right;

  Node(this.data);
}

class Bst {
  Node? root;

  insert(int value) {
   root = insertHelper(root, value);
  }

  inorder() {
    inorderHelper(root);
  }

  insertHelper(Node? root, int data) {
    Node node = Node(data);

    if (root == null) {
      root = node;
      return root;
    }

    if (data < root.data) {
      root.left = insertHelper(root.left, data);
    }
    if (data > root.data) {
      root.right = insertHelper(root.right, data);
    }

    return  root;
  }

  inorderHelper(Node? root) {
    if (root != null) {
      inorderHelper(root.left);
      print(root.data);
      inorderHelper(root.right);
    }
  }
}
