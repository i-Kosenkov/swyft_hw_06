//1. Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками.
class Cafe{
    var worker: [Worker]
    var tables: [Table]
    init (worker: [Worker], tables: [Table]){
        self.worker = worker
        self.tables = tables
    }

    func add(_ new: Worker){
        worker.append(new)
    }
    func get() -> [Worker] {
        worker
    }
}

struct Worker{
    enum Positions: String{
        case cashier = "Кассир"
        case cook = "Повар"
    }
    var name: String
    var cost: Double
    var post: Positions
}

let worker1 = Worker(name: "Ivanov Petr", cost: 20000, post: .cashier)
let worker2 = Worker(name: "Sidorov Ivan", cost: 25000, post: .cook)
let worker3 = Worker(name: "Kozlova Elena", cost: 26000, post: .cook)
var cafe = Cafe(worker: [worker1,worker2])
cafe.add(worker3)

print(cafe.get())

//2. Создать класс столика, в нём должно быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false, если места не хватает. Изначальное количество мест задаётся в инициализаторе.
//3. Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится кафе, в котором стоит столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра.

class Table{
    var places: [Int]
    var cafe: Cafe
//    var cafe: Cafe
    init (places: [Int], cafe: Cafe){
        self.places = [4, 3, 5]
        self.cafe = cafe
    }
    
    func freePlaces(guests: Int){
        for item in places{
            if guests <= item{
                print(true)
            }else{
                print(false)
            }
        }
    }
}

var table = Table(places: [])

print(table.freePlaces(guests: 4))
