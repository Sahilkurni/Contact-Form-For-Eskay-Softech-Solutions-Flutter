import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import Font Awesome package

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>(); // Form key for form validation
  bool isSubmitting = false; // Tracks if the form is being submitted

  // Function to handle form submission
  void handleSubmit() {
    if (_formKey.currentState!.validate()) {
      // Validate the form fields
      setState(() {
        isSubmitting = true; // Show loading spinner and disable button
      });

      // Simulate a delay to represent an API call or data processing
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          isSubmitting = false; // Re-enable the button after submission
        });

        // Show a success message using a SnackBar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Form submitted successfully!')),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Image.asset('assets\back.jpg').color,
      // backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back.jpg'), // Correct path to your image
            fit: BoxFit.cover, // Ensures the image covers the entire screen
          ),
        ),
        height: height,
        width: width,
        child: Row(
          children: [
            Container(
              height: height,
              width: 300,
              color: Colors.black,
              // decoration: BoxDecoration(
              //   border: Border.all(color: Colors.black),
              // ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Expanded(
                    child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Eskay Softech",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Oswald'),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset('assets/logo.png'),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Our Products",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Oswald'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        color: Colors.white, // Line color
                        thickness: 4, // Line thickness
                        indent: 20, // Left padding
                        endIndent: 20, // Right padding
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            FontAwesomeIcons.wineGlassAlt,
                            color: Colors.white,
                            size: 20,
                          ),
                          Icon(
                            FontAwesomeIcons.cocktail,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "LiquorLogix",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Oswald'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            FontAwesomeIcons.wineGlassAlt,
                            color: Colors.white,
                            size: 20,
                          ),
                          Icon(
                            Icons.restaurant,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 65,
                          ),
                          Text(
                            "Bar Byte",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Oswald'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            FontAwesomeIcons.hotel,
                            color: Colors.white,
                            size: 20,
                          ),
                          Icon(
                            FontAwesomeIcons.key,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Text(
                            "Room Rover",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Oswald'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            FontAwesomeIcons.cocktail,
                            color: Colors.white,
                            size: 20,
                          ),
                          Icon(
                            FontAwesomeIcons.music,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "Eskay Club",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Oswald'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            FontAwesomeIcons.store,
                            color: Colors.white,
                            size: 20,
                          ),
                          Icon(
                            FontAwesomeIcons.shoppingCart,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          Text(
                            "Eskay Neo",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Oswald'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        color: Colors.white, // Line color
                        thickness: 4, // Line thickness
                        indent: 20, // Left padding
                        endIndent: 20, // Right padding
                      ),
                    ],
                  ),
                )),
              ),
            ),
            Expanded(
                child: Container(
              // decoration:
              //     BoxDecoration(border: Border.all(color: Colors.black)),
              child: Column(
                children: [
                  Container(
                    height: 150,
                    // decoration:
                    //     BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Expanded(
                        child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 100,
                          ),
                          Container(
                            child: const Text(
                              "Contact",
                              style: TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Oswald'),
                            ),
                          ),
                        ],
                      ),
                    )),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(left: 100, top: 50.0),
                        height: 250,
                        // decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.black)),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Address :",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            ),
                            const Text(
                              "#1473/D+B+C, Bailwad Complex, Baswan Galli,\nNear Laxmi Mandir, BELGAVI-01",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Oswald'),
                            ),
                          ],
                        ),
                      )),
                      Expanded(
                        child: Container(
                          // width: 600,
                          height: 250,
                          padding: const EdgeInsets.only(right: 110.0),
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.black)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 50,
                                width: 500,
                                // decoration: BoxDecoration(
                                //     border: Border.all(color: Colors.black)),
                                child: const Center(
                                  child: Text(
                                    "Become One Of Our Ambassadors",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontFamily: 'Oswald'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 500,
                                // decoration: BoxDecoration(
                                //     border: Border.all(color: Colors.black)),
                                child: const Center(
                                  child: Text(
                                    "Want To Become Our Client ?",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontFamily: 'Oswald'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 500,
                                // decoration: BoxDecoration(
                                //     border: Border.all(color: Colors.black)),
                                child: const Center(
                                  child: Text(
                                    "Do You Want To Expand Your Business ?",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontFamily: 'Oswald'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 500,
                                // decoration: BoxDecoration(
                                //     border: Border.all(color: Colors.black)),
                                child: const Center(
                                  child: Text(
                                    "How To Buy Our Sotwares ?",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontFamily: 'Oswald'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 110, left: 100),
                      height: 500,
                      // decoration: BoxDecoration(
                      //     border: Border.all(color: Colors.black)),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Form(
                          key: _formKey, // Attach the form key for validation

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment
                                .spaceEvenly, // Distribute children evenly
                            children: [
                              const Text(
                                "Contact Form",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Oswald',
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween, // Space between fields
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'First Name',
                                        labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18, color: Colors.white),
                                      validator: (value) {
                                        // Validation for this field
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your first name';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                      width: 20), // Space between fields
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Last Name',
                                        labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18, color: Colors.white),
                                      validator: (value) {
                                        // Validation for this field
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your last name';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20), // Space between rows
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Country',
                                        labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18, color: Colors.white),
                                      validator: (value) {
                                        // Validation for this field
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your country';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Email Address',
                                        labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18, color: Colors.white),
                                      // RegExp(r'\S+@\S+\.\S+'):

                                      // A regular expression (RegEx) to validate email format:
                                      // \S matches any non-whitespace character.
                                      // + means "one or more" of the preceding character.
                                      // @ ensures the presence of an "@" symbol.
                                      // \. ensures the presence of a dot (.) in the domain

                                      // .hasMatch(value): Tests whether the entered value matches the email pattern defined by the RegEx.
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your email';
                                        } else if (!RegExp(r'\S+@\S+\.\S+')
                                            .hasMatch(value)) {
                                          return 'Please enter a valid email address';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Subject',
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Oswald',
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white),
                                validator: (value) {
                                  // Validation for this field
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your Subject';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                maxLines: 4, // Allows multi-line input
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Your Question',
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Oswald',
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white),
                                validator: (value) {
                                  // Validation for this field
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your question';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 30),
                              SizedBox(
                                width: 200, // Button width
                                child: isSubmitting
                                    ? CircularProgressIndicator() // Show loading spinner while submitting
                                    : ElevatedButton(
                                        onPressed:
                                            handleSubmit, // Call handleSubmit on click
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 15, horizontal: 30),
                                        ),
                                        child: const Text(
                                          'Send Your Message', // Button text
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Oswald',
                                          ),
                                        ),
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
