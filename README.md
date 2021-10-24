# SwiftUI.TextArea

Currently in SwiftUi, TextEditor does not support placeholder. This project shows how to create a TextArea which supports placeholder.

TextArea(text: $address, placeholder: "Enter address")

Before the user enters any text in the TextArea, the placeholder text shows in it.

![image](https://user-images.githubusercontent.com/15805568/138616599-742b31da-a68f-43b5-915c-e6772548e4a0.png)

When the user starts to enter any text, the placeholder disappears.

![image](https://user-images.githubusercontent.com/15805568/138616761-0e196f3f-18dd-4db5-a462-afd50392c98d.png)

If the user clears the text in the TextArea, the placeholder text shows again.
