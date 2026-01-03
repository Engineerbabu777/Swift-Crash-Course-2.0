import Dispatch

// Write safe,
//  structured async code with
// async/await,
// Tasks,
// actors, and
// cooperative cancellation.


print("Start")

let group = DispatchGroup()
group.enter()

DispatchQueue.global().async {
  print("Background work")
  for i in 1...10{
    print(i*i*i)
  }
  group.leave()
}
group.wait()
print("Done")



func fetchValue() async -> Int {7}

print("Start Over!")
let sem = DispatchSemaphore(value: 0)

Task {
    let v = await fetchValue()
    print("Got \(v)")
    sem.signal()
}
sem.wait()
print("Done2")



func fetch(_ id: Int) async -> Int { id * 10 }

print("Start")
let sem2 = DispatchSemaphore(value: 0)
Task {
  async let a = fetch(1)
  async let b = fetch(2)
  let total = await (a + b)
  print("Total \(total)")

  print("Done222")
  sem2.signal()
}
sem2.wait()
print("Done")



enum FetchError: Error { case bad }

func fetch3(_ ok: Bool) async throws -> Int {
  if !ok { throw FetchError.bad }
  return 42
}

print("Start")
let sem3 = DispatchSemaphore(value: 0)
Task {
  do {
    let v = try await fetch3(true)
    print("ok \(v)")
  } catch {
    print("error")
  }
  sem3.signal()
}
sem3.wait()
print("Done")


func square4(_ n: Int) async -> Int { n * n }

print("Start")
let sem4 = DispatchSemaphore(value: 0)
Task {
  var results: [Int] = []
  await withTaskGroup(of: Int.self) { group in
    for n in [1,2,3] {
      group.addTask { await square4(n) }
    }
    for await val in group {
      results.append(val)
    }
  }
  print(results.sorted().map(String.init).joined(separator: ","))
  sem4.signal()
}
sem4.wait()
print("Done")


actor SafeCounter {
  private var value = 0
  func increment() { value += 1 }
  func get() -> Int { value }
}

let counter = SafeCounter()
print("Start")
let sem = DispatchSemaphore(value: 0)
Task {
  await withTaskGroup(of: Void.self) { group in
    for _ in 0..<1000 {
      group.addTask { await counter.increment() }
    }
  }
  print("Final: \(await counter.get())")
  sem.signal()
}
sem.wait()
print("Done")