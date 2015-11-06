/*
ID: neo-white
LANG: C++
TASK:main.cpp
*/
#include "Flexible_vector.h"

int main(int argc,char *argv[]){
    Flexible_vector *p = new Flexible_vector();

    std::string file_in = "pmlp_iris.csv";
    std::string file_out = "test";

    p->prob = p->Read_file_without_index(file_in);
    p->output_problem(file_out,p->prob);

    return 0;
}

