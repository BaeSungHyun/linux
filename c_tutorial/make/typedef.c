// struct, enum, union is tag not type by itself

typedef struct tnode_1 {
	int count;
	struct tnode_1* left;
	struct tnode_1* right;
} tnode1;

typedef struct tnode_2 tnode2;
struct tnode_2 {
	int count;
	tnode2* left;
	tnode2* right;
} tnode2;
	
