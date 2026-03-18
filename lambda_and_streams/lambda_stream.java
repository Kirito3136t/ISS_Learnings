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








