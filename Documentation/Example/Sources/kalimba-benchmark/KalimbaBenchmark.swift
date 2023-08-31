import CollectionsBenchmark
import Kalimba

@main
struct KalimbaBenchmark {
  static func main() async {
    // Create a new benchmark instance.
    var benchmark = Benchmark(title: "Kalimba")

    // Define a very simple benchmark called `kalimbaOrdered`.
    benchmark.addSimple(
      title: "kalimbaOrdered",
      input: [Int].self
    ) { input in
      blackHole(input.kalimbaOrdered())
    }

    // Execute the benchmark tool with the above definitions.
    await benchmark.main()
  }
}
