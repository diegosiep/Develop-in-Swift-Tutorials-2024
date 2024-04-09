
/// DECLARATIVE VS. IMPERATIVE: SwiftUI & UIKit

/*
 UIKit uses imperative programming in which commands (or code) are explicitly written to tell the compiler how a programme should work.
 As an example let's say we have a function to be called when a switch is tapped.
 Problems with this approach arise when, for example, we have two switches that have two states (such as on/off) and each of the combinations causes different actions when called. The more switches we add, the more complex the code will become.
 
 SwiftUI uses a declarative approach, in which code describes the logic of a computation without describing its control flow.
 In other words, we tell the compiler what it should do in different states, which are handled by itself, rather than writing a function that will be executed when a switch is on/off.
 We are not telling the components of a declarative UI when they should show or hide, but we tell them the rules that they should follow. A major disadvantage of this approach is the fact that we have less control over our programme.
 
 */

// Let's see this in action. Let's say we have an app that updates a label every time a user enters text in a textfield.

// Here's the approach to make this happen using UIKit:

/*
 import UIKit
 
 class ViewController: UITableViewController {
 var textLabel: UILabel?
 
 lazy var textField: UITextField! = { [unowned self] in
 let textField = UITextField()
 textField.translatesAutoresizingMaskIntoConstraints = false
 textField.placeholder = "Enter your name"
 textField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
 return textField
 }()
 
 @objc func textFieldDidChange(_ textField: UITextField) {
 guard let newText = textField.text else {
 return
 }
 textLabel?.text = "Your name is \(newText)"
 }
 
 override func viewDidLoad() {
 super.viewDidLoad()
 tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TextFieldCell")
 tableView.register(UITableViewCell.self, forCellReuseIdentifier: "LabelCell")
 }
 
 override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 return 2
 }
 
 override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 let cell: UITableViewCell
 if indexPath.row == 0 {
 cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldCell", for: indexPath)
 cell.contentView.addSubview(textField)
 setConstraint(in: cell)
 } else {
 cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
 textLabel = cell.textLabel
 textLabel?.text = "Your name is \("")"
 }
 return cell
 }
 
 private func setConstraint(in cell: UITableViewCell){
 textField.leadingAnchor.constraint(equalTo: cell.leadingAnchor, constant: 16).isActive = true
 textField.topAnchor.constraint(equalTo: cell.topAnchor).isActive = true
 textField.trailingAnchor.constraint(equalTo: cell.trailingAnchor, constant: -16).isActive = true
 textField.bottomAnchor.constraint(equalTo: cell.bottomAnchor).isActive = true
 }
 
 }
 
 */

// So, it is important to note the addTarget line and the textFieldDidChange method. Firstly, we tell which method should be called when the value of the text field has changed. Secondly, in the textFieldDidChange method, we implement our logic of how the text or value available from the text field should be used to update the label's text.


// In SwiftUI, things are a little bit different. You will first notice how much more simpler code is written and implemented:

/*
 struct ContentView: View {
 @State private var name = ""
 
 var body: some View {
 Form {
 TextField("Enter your name", text: $name)
 Text("Your name is \(name)")
 }
 }
 }
 
 */

/*
 The @State attribute written at the name property definition, means that its 'state' or 'value' needs to be updated by Swift, we are NOT explicitly telling the compiler how it should update its value.
 Within the TextField object, we are telling Swift that the value of the name property is being updated and displayed when the text field is updated. This is also called a two-way binding.
 In other words, we are using the state variable to display the data while also telling Swift that it has to update the state of the variable when it needs to.
 The Text object is using our name variable to display its value but there is no dollar sign, which means we are ONLY reading its value but NOT updating it.
 */

/// Conclusion:

// SwiftUI abstracts and summarises a lot of work that is done for us, but behind the scenes it is STILL using UIKit, which also means that UIKit is not going anywhere anytime soon.

// Its convenience lies in its ease of use and its capability of reaching more devices with less effort; the cost of this abstraction is the lack of data customisation that we may have when we use UIKit.
