/**
 * s0425
 * 잃어버린 자바를 찾아
 * 프로그래머스 다시 푸는중
 * 
 * 완주하지 못한 선수 HashMap
 * https://programmers.co.kr/learn/courses/30/lessons/42576
 */
import java.util.HashMap;

public class s0425 {

    public static void main(String[] args) {
        String answer = "";
        String[] participant ={"leo", "kiki", "eden"};
        String[] completion ={"eden", "kiki"};

        HashMap<String,Integer> pt = new HashMap<>();        

        //HashMap에 participant key값에 넣고 value에 +1
        for(String s : participant){
            pt.put(s,pt.getOrDefault(s,0) + 1);
        }
        //위의 participant와 completion의 key 값이 같아도 중복을 허용함 value 값만 +1
        for(String s : completion){
            pt.put(s,pt.getOrDefault(s,0) + 1);
        }
        //value값이 홀수면 그 key값이 완주 못한 선수
        for(String key : pt.keySet()) {
            if(pt.get(key)%2 == 1) {
                answer = key;
            }
        }
        System.out.println(answer);

        String a = "1234";
        System.out.println(Integer.parseInt(a) - 1);
    }    
}