// filter data 
List<String> names = List.of("Akash", "Dev", "Rahul");
names.stream()
        .filter(name -> name.startsWith("A"))
        .forEach((x)->System.out.println(x));

// map data (transform)
List<String> names = List.of("java", "python");
names.stream()
        .map(word -> word.toUpperCase())
        .forEach(x->System.out.println(x));

// collect (convert to set/list/map)
List<Integer> result = nums.stream()
                            .filter(x->x%2)
                            .collect(Collectors.toList());

// sort
nums.stream()
    .sorted()
    .forEach(x->System.out.println(x));

// Chaining Operations 
List<String> names = List.of("akash", "dev","akash", "rahul","karan","simran");
List<String> caps_names = names.stream()
                            .distinct()
                            .filter(x->x.length()>4)
                            .map(x->x.toUpperCase())
                            .sorted()
                            .collect(Collectors.toList());

// reduce
List<Integer> nums = List.of(2,6,4,3,7,9);
int sum = nums.stream()
            .reduce(0,(acc,curr)->acc+curr);

// custom comparator
List<String> names = List.of("akash", "dev","akash", "rahul","karan","simran");
names.stream()
    .distinct()
    .sorted((a,b)->b.compareTo(a))
    .forEach(x->System.out.println(x))

//flat map (used for nested list)
List<List<String>> list = List.of(
    List.of("Akash", "Rahul"),
    List.of("Dev", "Shubham")
);
list.stream()
    .flatmap(x->x.stream())
    .forEach(x->System.out.println(x));

// hashmap with streams
Map<Integer, String> map = new HashMap<>();
map.put(1, "Akash");
map.put(2, "Dev");
map.put(3, "Rahul");

map.entrySet().stream()
    .forEach(entry -> 
        System.out.println(entry.getKey() + " " + entry.getValue())
    );

// we can use map.keys() or map.values() to parse acording to specific requirement








