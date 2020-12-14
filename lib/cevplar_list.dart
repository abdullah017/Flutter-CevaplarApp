import "dart:math";

T getRandomElement<T>(List<T> list) {
    final random = new Random();
    int i = random.nextInt(list.length);
    return list[i];
}

void main() {
    List<String> listString = ["Ahmet", "Tayfun", "Hakan", "Abdullah", "Yetkin", "Volkan"];
    String elementString = getRandomElement(listString);
    print("Rastgele String: " + elementString);  
}