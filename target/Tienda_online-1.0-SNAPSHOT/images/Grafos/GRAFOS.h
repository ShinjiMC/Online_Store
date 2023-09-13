#pragma once
#ifndef GRAPHS
#define GRAPHS
#include <list>
#include <stack>
#include <queue>

using namespace std;



#include <list>
#include <algorithm>
#include <string>
#include <iostream>
#include <fstream>

#define INF 99999;


using namespace std;


template<class V, class A>
class Edge;




template<class V, class A>
class Vertex
{
public:
    V                   m_Dato;
    int                 m_Costo;
    bool                m_Visit;
    list<Edge<V, A> >    m_list_Edge;

    Vertex(V vertice)
    {
        m_Dato = vertice;
        m_Costo = INF;
        m_Visit = false;

    }

    bool operator==(const Vertex<V, A>& Ve)
    {
        return m_Dato == Ve.m_Dato;
    }

};


template<class V, class A>
class Vertexs
{
public:
    V                   v_inicio;
    int                 tam;
    V                   v_final;

    Vertexs(V a, V b, A tama)
    {
        v_inicio = a;
        v_final = b;
        tam = tama;
    }
    A GetTam() {
        return tam;
    }

    void imprimir() {
        cout << v_inicio << " - " << tam << " - " << v_final << endl;
    }

};

template<class V, class A>
class Edge
{
public:
    A                   m_Dato;
    Vertex<V, A>* m_pVertex;

    Edge(A a, Vertex<V, A>* q = 0)
    {
        m_Dato = a;
        m_pVertex = q;
    }


    bool operator==(const Edge<V, A>& Ar)
    {
        return m_Dato == Ar.m_Dato;
    }

};

template<class V, class A>
class Graph
{
    typedef typename   list< Vertex <V, A>>::iterator Iterator_Vertex;
    typedef typename   list<  Edge  <V, A>>::iterator Iterator_Edge;
private:
    list< Vertex <V, A> >   m_Graph;


public:
    A** mtr;
    int counts = 0;
    vector<V> a;
    vector < Vertexs<V, A>> fe;
    Graph() {};

    void Insert(V Vertice)
    {
        m_Graph.push_back(Vertex<V, A>(Vertice));
        counts++;
        a.push_back(Vertice);
        insertarMTR();
    };
    void Insert_Edge(V v1, V v2, A a)
    {
        Iterator_Vertex p = find_Vertex(v1);
        Iterator_Vertex q = find_Vertex(v2);
        if (p != m_Graph.end() && q != m_Graph.end())
        {
            // ¿Qué ocurre si la arista y existe?
            Vertex<V, A>* pDestino = &(*q);
            p->m_list_Edge.push_back(Edge<V, A>(a, pDestino));
        }

    };
    void Reset_Graph()
    {
        Iterator_Vertex it = m_Graph.begin();
        for (; it != m_Graph.end(); it++)
        {
            it->m_Visit = false;
        }
    }

    void DFS()
    {
        Reset_Graph();
        stack< Iterator_Vertex > pila;
        pila.push(m_Graph.begin());
        while (!pila.empty())
        {
            Iterator_Vertex it = pila.top();
            pila.pop();
            if (!it->m_Visit) {
                it->m_Visit = true;
                cout << it->m_Dato << endl;
            }
            Iterator_Edge it_e = it->m_list_Edge.begin();
            for (; it_e != it->m_list_Edge.end(); ++it_e)
            {
                if (it_e->m_pVertex->m_Visit == false)
                {
                    Iterator_Vertex it_d = find_Vertex(it_e->m_pVertex->m_Dato);
                    if (it_d != m_Graph.end())
                        pila.push(it_d);
                }
            }
        }

    }
    void BFS()
    {
        Reset_Graph();
        queue< Iterator_Vertex > cola;
        cola.push(m_Graph.begin());
        while (!cola.empty())
        {
            Iterator_Vertex it = cola.front();
            cola.pop();

            if (!it->m_Visit) {
                it->m_Visit = true;
                cout << it->m_Dato << endl;
            }
            Iterator_Edge it_e = it->m_list_Edge.begin();
            for (; it_e != it->m_list_Edge.end(); ++it_e)
            {
                Iterator_Vertex it_d = find_Vertex(it_e->m_pVertex->m_Dato);
                if (it_d != m_Graph.end() && it_d->m_Visit == false)
                    cola.push(it_d);

            }
        }

    }

    Iterator_Vertex  find_Vertex(V v)
    {
        return    std::find(m_Graph.begin(), m_Graph.end(), Vertex<V, A>(v));
    }


    bool find_edge(V v, A a)
    {
        Iterator_Vertex  p = find_Vertex(v);
        Iterator_Edge    q = std::find(p->m_list_Edge.begin(), p->m_list_Edge.end(), Edge<V, A>(a));
        if (q != p->m_list_Edge.end())
            return true;
    }
    void Print()
    {
        typedef typename   list< Vertex <V, A>>::iterator Iterator_Vertex;
        Iterator_Vertex it = m_Graph.begin();
        for (; it != m_Graph.end(); it++)
        {
            Iterator_Edge    it_e = it->m_list_Edge.begin();
            for (; it_e != it->m_list_Edge.end(); ++it_e)
            {
                cout << it->m_Dato << " ---> " << it_e->m_Dato << "---->" << it_e->m_pVertex->m_Dato << endl;
            }

        }

    };
    vector<Vertexs<V, A>> Extract() {
        typedef typename   list< Vertex <V, A>>::iterator Iterator_Vertex;
        Iterator_Vertex it = m_Graph.begin();
        vector<Vertexs<V, A>> up;
        for (; it != m_Graph.end(); it++) {
            Iterator_Edge    it_e = it->m_list_Edge.begin();
            for (; it_e != it->m_list_Edge.end(); ++it_e) {
                Vertexs<V, A> fe = Vertexs<V, A>(it->m_Dato, it_e->m_pVertex->m_Dato, it_e->m_Dato);
                up.push_back(fe);
            }
        }
        return up;
    };
    void insertarMTR() {
        mtr = new A * [counts];
        for (int i = 0; i < counts; i++) {
            mtr[i] = new A[counts];
            for (int j = 0; j < counts; j++) {
                mtr[i][j] = 0;
            }
        }

    }
    void insertVal() {
        vector<Vertexs<V, A>> zzz = Extract();
        int c = 0;
        while (c != zzz.size()) {
            Vertexs<V, A> fe = zzz.at(c);
            for (size_t i = 0; i < a.size(); ++i) {
                for (size_t j = 0; j < a.size(); ++j) {
                    if (a.at(i) == fe.v_inicio && a.at(j) == fe.v_final) {
                        mtr[i][j] = fe.GetTam();
                    }
                }
            }
            c++;
        }

    }
    void mostrarMTR() {
        for (int i = 0; i < counts; i++) {
            for (int j = 0; j < counts; j++) {
                cout << *(*(mtr + i) + j) << " ";
            }
            cout << endl;
        }
    }
    int findIndex(V item) {
        for (auto i = 0; i < a.size(); ++i) {
            if (a[i] == item)
                return i;
        }
        return -1;
    }

    void DFS_m(string& c, int d, vector<bool>& vist) {
        c = c + " ";
        c = c + a.at(d);
        vist[d] = true;
        for (int i = 0; i < counts; i++) {
            if (mtr[d][i] != 0 && !vist[i]) {
                DFS_m(c, i, vist);
            }
        }
    }
    void BFS_m(string& c, int d, vector<bool> vist) {
        queue< V > cola;
        cola.push(a.at(d));
        while (!cola.empty())
        {
            V it = cola.front();
            cola.pop();
            int ind = findIndex(it);
            if (vist[ind] != true) {
                vist[ind] = true;
                c = c + " ";
                c = c + a.at(ind);
            }
            for (int i = 0; i < counts; i++) {
                if (mtr[ind][i] != 0 && vist[i] != true) {
                    cola.push(a.at(i));
                }
            }
        }
    }
    int busq(V a, V b, A c) {
        vector < Vertexs<V, A>> aux = fe;
        for (int i = 0; i != aux.size(); i++) {
            if (a == aux[i].v_inicio && b == aux[i].v_final && c == aux[i].tam) {
                return 1;
            }
        }
        return -1;
    }
    void update(V d) {
        vector<V> b;
        int ind = findIndex(d);
        b.push_back(a.at(ind));
        for (size_t j = 0; j < a.size(); ++j) {
            if (j != ind) {
                b.push_back(a.at(j));
            }
        }
        a = b;
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //           ALGORITMO PRIM
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////

    int ind_min(A* alues, bool* vist) {
        A mini = INF;
        int ind = 0;
        for (auto i = 0; i < counts; i++) {
            if (!vist[i] && alues[i] < mini) {
                mini = alues[i];
                ind = i;
            }
        }
        return ind;
    }
    void printfprim(A* list) {
        A minCost = NULL;
        cout << "Ciudad \t\t-\tCiudad: \tTamaño" << endl;
        for (int i = 1; i < counts; i++) {
            if (*(*(mtr + *(list + i)) + i) != 0) {
                cout << a.at(*(list + i)) << "\t\t - \t" << a.at(i) << " \t" << *(*(mtr + *(list + i)) + i) << " \n";
                minCost += mtr[list[i]][i];
                Vertexs<V, A> f = Vertexs<V, A>(a.at(list[i]), a.at(i), mtr[list[i]][i]);
                fe.push_back(f);
            }
            else {
                cout << a.at(*(list + i)) << "\t\t - \t" << a.at(i) << " \t" << *(*(mtr + i) + *(list + i)) << " \n";
                minCost += mtr[i][list[i]];
                Vertexs<V, A> f = Vertexs<V, A>(a.at(list[i]), a.at(i), mtr[i][list[i]]);
                fe.push_back(f);
            }
        }
        cout << "Total cost is " << minCost << endl;
    }

    void findprim(V d) {
        fe.clear();
        update(d);
        insertVal();
        A* list = new A[counts];
        A* alues = new A[counts];
        bool* vist = new bool[counts];
        for (int i = 0; i < counts; i++) {
            alues[i] = INF; vist[i] = false; list[i] = -1;
        }
        for (int i = 0; i < counts; i++) {
            int ind = ind_min(alues, vist);
            vist[ind] = true;
            for (int j = 0; j < counts; j++) {
                if (mtr[ind][j] != 0 && !vist[j] && mtr[ind][j] < alues[j]) {
                    list[j] = ind;
                    alues[j] = mtr[ind][j];
                }
            }
        }
        //printfprim(list);
    }
    void DFSS_prim(V d) {
        int ind = findIndex(d);
        vector<bool> vist(counts, false);
        string DFS;
        DFS_m(DFS, ind, vist);
        cout << "DFS: " << DFS << endl;
    }
    void BFSS_prim(V d) {
        int ind = findIndex(d);
        vector<bool> vist(counts, false);
        string BFS;
        BFS_m(BFS, ind, vist);
        cout << "BFS: " << BFS << endl;
    }
    void grapoPRIM() {
        typedef typename   list< Vertex <V, A>>::iterator Iterator_Vertex;
        Iterator_Vertex it = m_Graph.begin();
        ofstream f;
        vector < Vertexs<V, A>> aux = fe;
        f.open("Prim.dot");
        f << "digraph A { \n";
        f << "rankdir = \"LR\";" << endl;
        for (; it != m_Graph.end(); it++)
        {
            Iterator_Edge    it_e = it->m_list_Edge.begin();
            for (; it_e != it->m_list_Edge.end(); ++it_e)
            {
                if (busq(it->m_Dato, it_e->m_pVertex->m_Dato, it_e->m_Dato) == 1) {
                    f << "\t " << it->m_Dato << " -> " << it_e->m_pVertex->m_Dato << " [ color=\"blue\" label=\"" << it_e->m_Dato << "\"];\n";
                }
                else {
                    f << "\t " << it->m_Dato << " -> " << it_e->m_pVertex->m_Dato << " [label=\"" << it_e->m_Dato << "\"];\n";
                }
            }

        }
        f << "}" << endl;
        f.close();
        system("dot -Tpng Prim.dot -o Prim.png -Nshape=rect");
        system("Prim.png");
    };
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //           ALGORITMO DISKJTRA
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////
    A minD(A* a, bool* b) {
        A min = INF;
        int index = NULL;
        for (int i = 0; i < counts; i++)
            if (!b[i] && a[i] <= min)
                min = a[i], index = i;
        return index;
    }
    void dijkstra(V d) {
        int ind = findIndex(d);
        A** c = new A * [counts];
        A* di = new A[counts];
        A* p = new A[counts];
        A* vis = new A[counts];
        for (int i = 0; i < counts; i++) {
            c[i] = new A[counts];
        }
        for (int i = 0; i < counts; i++) {
            for (int j = 0; j < counts; j++) {
                if (mtr[i][j] == 0) { c[i][j] = INFINITY; c[j][i] = INFINITY; }
                else { c[i][j] = mtr[i][j]; c[j][i] = mtr[i][j]; }
            }
        }
        for (int i = 0; i < counts; i++) {
            di[i] = c[ind][i];
            p[i] = ind;
            vis[i] = 0;
        }
        di[ind] = 0;
        vis[ind] = 1;
        int co = 0;
        int min = NULL, sig = NULL;
        while (co < counts - 1) {
            min = INFINITY;
            for (int i = 0; i < counts; i++) {
                if (di[i] < min && !vis[i]) {
                    min = di[i];
                    sig = i;
                }
            }
            vis[sig] = 1;
            for (int i = 0; i < counts; i++) {
                if (!vis[i]) {
                    if (min + c[sig][i] < di[i]) {
                        di[i] = min + c[sig][i];
                        p[i] = sig;
                    }
                }
            }
            co++;
        }
        printDijkstra(p, ind, di);

    }
    void printDijkstra(A* dist, int d, A* di) {
        int j = 0;
        for (int i = 0; i < counts; i++) {
            if (i != d) {
                cout << "\nDistance of node" << i << "=" << di[i];
                cout << "\nPath=" << i;
                j = i;
                do {
                    j = dist[j];
                    cout << "<-" << j;
                } while (j != d);
            }
        }
    }



    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //           ALGORITMO FLORYD-WARSHALL
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //           ALGORITMO KRUSKALL
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////
    bool check(bool* a) {
        for (int i = 0; i < counts; i++) {
            if (a[i] == false) return true;
        }
        return false;
    }

    void findKruskall() {
        fe.clear();
        insertVal();
        bool* vist = new bool[counts];
        for (int i = 0; i < counts; i++) {
            vist[i] = false;
        }
        int c = NULL, b = NULL;
        while (check(vist)) {
            A min = INF;
            for (int i = 0; i < counts; i++) {
                for (int j = 0; j < counts; j++) {
                    if (mtr[i][j] != 0 && !vist[j] && mtr[i][j] < min) {
                        min = mtr[i][j];
                        c = i; b = j;
                    }
                }
            }
            if (vist[c] == false || vist[b] == false) {
                vist[c] = true;
                vist[b] = true;
            }
            Vertexs<V, A> f = Vertexs<V, A>(a.at(c), a.at(b), min);
            fe.push_back(f);
        }
    }
    void PrintKruskall() {
        for (int i = 0; i != fe.size(); i++) {
            fe.at(i).imprimir();
        }
    }
    void DFSS_K(V d) {
        int ind = findIndex(d);
        vector<bool> vist(counts, false);
        string DFS;
        DFS_m(DFS, ind, vist);
        cout << "DFS: " << DFS << endl;
    }
    void BFSS_K(V d) {
        int ind = findIndex(d);
        vector<bool> vist(counts, false);
        string BFS;
        BFS_m(BFS, ind, vist);
        cout << "BFS: " << BFS << endl;
    }
    void grapoKruskall() {
        findKruskall();
        typedef typename   list< Vertex <V, A>>::iterator Iterator_Vertex;
        Iterator_Vertex it = m_Graph.begin();
        ofstream f;
        vector < Vertexs<V, A>> aux = fe;
        f.open("Kruskall.dot");
        f << "digraph A { \n";
        f << "rankdir = \"LR\";" << endl;
        for (; it != m_Graph.end(); it++)
        {
            Iterator_Edge    it_e = it->m_list_Edge.begin();
            for (; it_e != it->m_list_Edge.end(); ++it_e)
            {
                if (busq(it->m_Dato, it_e->m_pVertex->m_Dato, it_e->m_Dato) == 1) {
                    f << "\t " << it->m_Dato << " -> " << it_e->m_pVertex->m_Dato << " [ color=\"blue\" label=\"" << it_e->m_Dato << "\"];\n";
                }
                else {
                    f << "\t " << it->m_Dato << " -> " << it_e->m_pVertex->m_Dato << " [label=\"" << it_e->m_Dato << "\"];\n";
                }
            }

        }
        f << "}" << endl;
        f.close();
        system("dot -Tpng Kruskall.dot -o Kruskall.png -Nshape=rect");
        system("Kruskall.png");
    };


    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //           ALGORITMO FLUJOS MAXIMOS Y MINIMOS 
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////



    void grapfo() {
        typedef typename   list< Vertex <V, A>>::iterator Iterator_Vertex;
        Iterator_Vertex it = m_Graph.begin();
        ofstream f;
        f.open("Grafo.dot");
        f << "digraph A { \n";
        f << "rankdir = \"LR\";" << endl;
        for (; it != m_Graph.end(); it++)
        {
            Iterator_Edge    it_e = it->m_list_Edge.begin();
            for (; it_e != it->m_list_Edge.end(); ++it_e)
            {
                f << "\t " << it->m_Dato << " -> " << it_e->m_pVertex->m_Dato << " [label=\"" << it_e->m_Dato << "\"];\n";
            }

        }
        f << "}" << endl;
        f.close();
        system("dot -Tpng Grafo.dot -o Grafo.png -Nshape=rect");
        system("Grafo.png");
    };
};
#endif