// Problem: $(PROBLEM)
// Contest: $(CONTEST)
// Judge: $(JUDGE)
// URL: $(URL)
// Memory Limit: $(MEMLIM)
// Time Limit: $(TIMELIM)
// Start: $(DATE)

#include <algorithm>
#include <bitset>
#include <complex>
#include <deque>
#include <exception>
#include <fstream>
#include <functional>
#include <iomanip>
#include <ios>
#include <iosfwd>
#include <iostream>
#include <istream>
#include <iterator>
#include <limits>
#include <list>
#include <locale>
#include <map>
#include <memory>
#include <new>
#include <numeric>
#include <ostream>
#include <queue>
#include <set>
#include <sstream>
#include <stack>
#include <stdexcept>
#include <streambuf>
#include <string>
#include <typeinfo>
#include <utility>
#include <valarray>
#include <vector>
#include <array>
#include <atomic>
#include <chrono>
#include <codecvt>
#include <condition_variable>
#include <forward_list>
#include <future>
#include <initializer_list>
#include <mutex>
#include <random>
#include <ratio>
#include <regex>
#include <scoped_allocator>
#include <system_error>
#include <thread>
#include <tuple>
#include <typeindex>
#include <type_traits>
#include <unordered_map>
#include <unordered_set>

using namespace std;


typedef long long ll;
typedef pair<int, int> pii;
typedef pair<ll, ll> pll;
typedef vector<int> vi;
typedef vector<ll> vll;
typedef vector<pii> vpii;
#define MOD_P 1000000007
#define REP(i,a,b) for (ll i = a; i < b; i++)
#define REPD(i,a,b) for (ll i = a; i > b; i--)
#define REPIT(it, m) for (auto it = m.begin(); it != m.end(); it++)
#define REPDIT(it, m) for (auto it = m.end(); it != m.begin(); it--)
#define W(t) while(t--)
#define PB push_back
#define MP make_pair
#define F first
#define S second
#define ALL(x) x.begin(), x.end()
#define SORT(x) sort(ALL(x))
#define RSORT(x) sort(x.rbegin(), x.rend())
#define SZ(x) (int)x.size()
#define MAX(x,y) (x) = max(x,y)
#define MIN(x,y) (x) = min(x,y)


struct edge {
	int u, v;
	int weight;
	edge (int _u, int _v, int _w) {
		u =_u;
		v = _v;
		weight = _w;
	};
};

bool edge_comp(const edge &a, edge &b) {
	return a.weight < b.weight;
}

void show_graph(vector<edge> edges) {
    REP(i,0,SZ(edges)) {
        cout << edges[i].u << " -- " << edges[i].v << " peso :" << edges[i].weight << endl;
    }
}
struct union_find
{
    vector<int> parent;
    vector<int> rank;
    union_find(int n)
    {
        parent.resize(n);
        rank.resize(n);
        REP(i,0,n)
        {
            parent[i] = i;
            rank[i] = 0;
        }
    }
    int find(int x)
    {
        if (parent[x] == x)
            return x;
        return parent[x] = find(parent[x]);
    }
    void unite(int x, int y)
    {
        x = find(x);
        y = find(y);
        if (x == y)
            return;
        if (rank[x] < rank[y])
            parent[x] = y;
        else
        {
            parent[y] = x;
            if (rank[x] == rank[y])
                rank[x]++;
        }
    }
};

vector<edge>  mst(ll n,vector<edge> edges)
{
    union_find uf(n);
    sort(edges.begin(), edges.end(), edge_comp);
    vector<edge> mst;
    REP(i,0,SZ(edges))
    {
        int u = edges[i].u;
        int v = edges[i].v;
        if (uf.find(u) != uf.find(v))
        {
            uf.unite(u, v);
            mst.push_back(edges[i]);
        }
    }
    if (mst.size() != n - 1) {
        return vector<edge>();
    }
    return mst;
}

//dijkstra
vector<int> dijkstra(int n, vector<vector<pii>> &adj, int s)
{
    vector<int> dist(n, 1e9);
    dist[s] = 0;
    priority_queue<pii, vector<pii>, greater<pii>> pq;
    pq.push({0, s});
    while (!pq.empty())
    {
	int u = pq.top().second;
	int d = pq.top().first;
	pq.pop();
	if (d > dist[u])
	    continue;
	for (auto &e : adj[u])
	{
	    int v = e.first;
	    int w = e.second;
	    if (dist[u] + w < dist[v])
	    {
		dist[v] = dist[u] + w;
		pq.push({dist[v], v});
	    }
	}
    }
    return dist;
}

//bellman-ford
vector<int> bellman_ford(int n, vector<edge> &edges, int s)
{
    vector<int> dist(n, 1e9);
    dist[s] = 0;
    REP(i, 0, n - 1)
    {
	for (auto &e : edges)
	{
	    if (dist[e.u] + e.weight < dist[e.v])
		dist[e.v] = dist[e.u] + e.weight;
	}
    }
    return dist;
}

//floyd-warshall
vector<vector<int>> floyd_warshall(int n, vector<edge> &edges)
{
    vector<vector<int>> dist(n, vector<int>(n, 1e9));
    REP(i, 0, n)
    dist[i][i] = 0;
    for (auto &e : edges)
    dist[e.u][e.v] = e.weight;
    REP(k, 0, n)
    REP(i, 0, n)
    REP(j, 0, n)
    dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j]);
    return dist;
}




int main() {

	return 0;
}

