//
//  DropDownMenuViewController.swift
//  MySpar
//
//  Created by Элина Карапетян on 14.08.2023.
//

import UIKit

class DropDownMenuViewController: UIViewController {
    
    var delegate: MainPageViewControllerDelegate!
    var yes: Int!
    private let dropDownMenuView: DropDownMenuViewProtocol
    private let cities = [
        City(city: "Москва"), City(city: "Жуковский"), City(city: "Санкт-Петербург"),
        City(city: "Нижний Новгород"), City(city: "Йошкар-Ола"), City(city: "Саранск"),
        City(city: "Саров"), City(city: "Сестрорецк"), City(city: "Чкаловск"),
        City(city: "Пенза"), City(city: "Дзержинск"), City(city: "Анкудиновка"),
        City(city: "Арзамас"), City(city: "Афонино"), City(city: "Богородск"),
        City(city: "Бор"), City(city: "Видное"), City(city: "Владимир"),
        City(city: "Ворсма"), City(city: "Воскресенское"), City(city: "Выездное"),
        City(city: "Выкса"), City(city: "Городец"), City(city: "Гусь-Хрустальный"),
        City(city: "Иваново"), City(city: "Казань"), City(city: "Киров"),
        City(city: "Красногорск"), City(city: "Краснознаменск"), City(city: "Кстово"),
        City(city: "Кубинка"), City(city: "Кулебаки"), City(city: "Кусаковка"),
        City(city: "Малая Ельня"), City(city: "Муром"), City(city: "Мытищи"),
        City(city: "Навашино"), City(city: "Новинка"), City(city: "Новочебоксарск"),
        City(city: "Одинцово"), City(city: "Оршанка"), City(city: "Подольск"),
        City(city: "Сеченово"), City(city: "Сосновское"), City(city: "Химки"),
        City(city: "Чебоксары"), City(city: "Балахна"), City(city: "Сергач"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        dropDownMenuView.didLoad()
    }
    
    init(dropDownMenuView: DropDownMenuViewProtocol) {
        self.dropDownMenuView = dropDownMenuView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = dropDownMenuView
    }

}

extension DropDownMenuViewController: UITableViewDataSource, UITableViewDelegate, DropDownMenuViewControllerDelegate {
    func cancelBtnDidTap(){
        delegate.cancelBtnDidTap()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = cities[indexPath.row].city
        let bgColorView = UIView()
        bgColorView.backgroundColor = AppColorEnum.greenColor.color
        cell.selectedBackgroundView = bgColorView
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate.titleDidSelected(title: cities[indexPath.row].city)
    }
}
