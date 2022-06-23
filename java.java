public class abc {
    public static void main(string[] args) {
       abc good = new abc();

       boolean[][] visited = new boolean[9+1][9+1];
       good.dfs(base:1, index:1, visited);
    }

private void dfs(int bass, int index, boolean[][] visited){
    if (index > 9 || base > 9 || index < 1 || base < 1 || visited[base][index]) {
        return;
    }

    visited[base][index] = true;
    system.out.println(base + "x" + index + "=" + base*index);

    dfs(base, index:index +1, visited);
    dfs(base:base + 1, index: 1, visited)
    }
}
