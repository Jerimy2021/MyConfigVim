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
typedef complex<double> point_m;
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
#define flash ios_base::sync_with_stdio(0);cin.tie(0);cout.tie(0);

struct point {
	double x, y;
	point() {}
	point(double x, double y) : x(x), y(y) {}
	point operator+(const point &p) const { return point(x + p.x, y + p.y); }
	point operator-(const point &p) const { return point(x - p.x, y - p.y); }
	point operator*(double c) const { return point(x * c, y * c); }
	point operator/(double c) const { return point(x / c, y / c); }
	double distance(const point &p) const { return hypot(x - p.x, y - p.y); }

};



int main() {

	return 0;
}

