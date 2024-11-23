import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import Font Awesome package

class SecondContactForm extends StatefulWidget {
  const SecondContactForm({super.key});

  @override
  State<SecondContactForm> createState() => _SecondContactFormState();
}

class _SecondContactFormState extends State<SecondContactForm> {
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
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          isSubmitting = false; // Re-enable the button after submission
        });

        // Show a success message using a SnackBar
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Form submitted successfully!')),
        );
      });
    }
  }

  // Variable to hold the background color state
  Color _bgColor = Colors.white;
  Color _bgColor2 = Colors.black;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 244, 248, 1),
      appBar: AppBar(
        title: Row(
          children: [
            Container(
                height: 60, width: 60, child: Image.asset("assets/logo.png")),
            const SizedBox(
              width: 30,
            ),
            const Text(
              "Eskay Softech",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Oswald'),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          height: height,
          width: width,
          child: Row(
            children: [
              Container(
                width: 400,
                height: height,
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.black),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3), // Shadow color
                      offset: Offset(4, 4), // Shadow position
                      blurRadius: 10, // Blur effect
                      spreadRadius: 2, // Spread the shadow
                    ),
                  ],

                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 500,
                      child: Container(
                        // padding: const EdgeInsets.only(right: 110, left: 100),
                        padding: const EdgeInsets.all(20),
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
                                const Center(
                                  child: Text(
                                    "Contact Form",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: 'Oswald',
                                    ),
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
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Oswald',
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                        ),
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.black),
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
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Oswald',
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                        ),
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.black),
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
                                const SizedBox(
                                    height: 20), // Space between rows
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
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Oswald',
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                        ),
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.black),
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
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Oswald',
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                        ),
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.black),
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
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Oswald',
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                  ),
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.black),
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
                                  maxLines: 3, // Allows multi-line input
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Your Question',
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Oswald',
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                  ),
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.black),
                                  validator: (value) {
                                    // Validation for this field
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your question';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 30),
                                Center(
                                  child: Container(
                                    width: 300,
                                    // height: 40, // Button width
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(85, 94, 251, 1)),
                                    child: isSubmitting
                                        ? const CircularProgressIndicator() // Show loading spinner while submitting
                                        : ElevatedButton(
                                            onPressed:
                                                handleSubmit, // Call handleSubmit on click
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color.fromRGBO(
                                                        85, 94, 251, 1)),
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.all(20),
                      // decoration: BoxDecoration(
                      //     border: Border.all(color: Colors.black)),
                      child: ListView(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        scrollDirection: Axis.vertical,
                        children: const [
                          Text(
                            "Contact Information",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Oswald'),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 25,
                                color: Color.fromRGBO(99, 110, 126, 1),
                              ),
                              Text(
                                "#1473/D+B+C, Bailwad Complex, Baswan Galli,\nNear Laxmi Mandir, BELGAVI-01",
                                style: TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(143, 152, 162, 1),
                                    fontFamily: 'Oswald'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 25,
                                color: Color.fromRGBO(99, 110, 126, 1),
                              ),
                              Text(
                                "0831-4202928",
                                style: TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(143, 152, 162, 1),
                                    fontFamily: 'Oswald'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.mail,
                                size: 25,
                                color: Color.fromRGBO(99, 110, 126, 1),
                              ),
                              Text(
                                "eskaysoftech@gmail.com",
                                style: TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(143, 152, 162, 1),
                                    fontFamily: 'Oswald'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                // decoration:
                //     BoxDecoration(border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    Container(
                      height: height / 2,
                      padding: EdgeInsets.all(20),
                      // child: ,
                      // decoration: BoxDecoration(
                      //     border: Border.all(color: Colors.black)),
                      child: ListView(
                        children: [
                          const Text(
                            "Our Products :",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Oswald',
                            ),
                          ),
                          ListTile(
                            title: MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  _bgColor = const Color.fromRGBO(
                                      85, 94, 251, 1); // Change color on hover
                                  _bgColor2 = Colors.white;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  _bgColor = Colors
                                      .transparent; // Reset color when not hovering
                                  _bgColor2 = Colors
                                      .black; // Reset color when not hovering
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(
                                    milliseconds: 300), // Animation duration
                                width: 200,
                                //     200, // Animate width (can adjust the value)
                                // height: 50,
                                decoration: BoxDecoration(
                                  color: _bgColor, // Apply the background color
                                  // borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,

                                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.wineGlassAlt,
                                      color: _bgColor2,
                                      size: 20,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.cocktail,
                                      color: _bgColor2,
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      "LiquorLogix :",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: _bgColor2,
                                        fontFamily: 'Oswald',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            subtitle: const Text(
                              "Ideal for wine shops and retail liquor stores",
                              style: TextStyle(fontSize: 15),
                            ),
                            // trailing: ,
                          ),
                          const Divider(
                            color: Colors.grey, // Line color
                            thickness: 2, // Line thickness
                            indent: 30, // Left padding
                            endIndent: 30, // Right padding
                          ),
                          const ListTile(
                            title: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,

                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  FontAwesomeIcons.wineGlassAlt,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.restaurant,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 65,
                                ),
                                Text(
                                  "Bar Byte :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              "Perfect for bars, restaurants, cafeterias, sweet marts, bakeries, ice cream parlours and reatil shops ",
                              style: TextStyle(fontSize: 15),
                            ),
                            // trailing: ,
                          ),
                          const Divider(
                            color: Colors.grey, // Line color
                            thickness: 2, // Line thickness
                            indent: 30, // Left padding
                            endIndent: 30, // Right padding
                          ),
                          const ListTile(
                            title: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,

                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  FontAwesomeIcons.hotel,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  FontAwesomeIcons.key,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 65,
                                ),
                                Text(
                                  "Room Rover :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              "Aliourd for lodgings, hotels, lodges, home stays, clubs etc",
                              style: TextStyle(fontSize: 15),
                            ),
                            // trailing: ,
                          ),
                          const Divider(
                            color: Colors.grey, // Line color
                            thickness: 2, // Line thickness
                            indent: 30, // Left padding
                            endIndent: 30, // Right padding
                          ),
                          const ListTile(
                            title: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,

                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  FontAwesomeIcons.store,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  FontAwesomeIcons.shoppingCart,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 65,
                                ),
                                Text(
                                  "Eskay Neo",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              "Aliourd for lodgings, hotels, lodges, home stays, clubs etc",
                              style: TextStyle(fontSize: 15),
                            ),
                            // trailing: ,
                          ),
                          const Divider(
                            color: Colors.grey, // Line color
                            thickness: 2, // Line thickness
                            indent: 30, // Left padding
                            endIndent: 30, // Right padding
                          ),
                          const ListTile(
                            title: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,

                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  FontAwesomeIcons.music,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  FontAwesomeIcons.cocktail,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 65,
                                ),
                                Text(
                                  "Eskay Club :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              "Complete club management software",
                              style: TextStyle(fontSize: 15),
                            ),
                            // trailing: ,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.all(20.0),
                      // decoration: BoxDecoration(
                      //     border: Border.all(color: Colors.black)),
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "How Can We Help You ?",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Oswald',
                            ),
                          ),
                          Text(
                            "Please select a topic below related to your inquiry. if you don't find what you need, feel free to contact us",
                            style: TextStyle(fontSize: 25),
                          ),
                          ListTile(
                            title: Text(
                              "Book a Demo",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            subtitle: Text(
                              "Request a demo from one of our conversion specialists",
                              style: TextStyle(fontSize: 18),
                            ),
                            trailing: Icon(Icons.chevron_right_sharp),
                          ),
                          Divider(
                            color: Colors.grey, // Line color
                            thickness: 2, // Line thickness
                            indent: 30, // Left padding
                            endIndent: 30, // Right padding
                          ),
                          ListTile(
                            title: Text(
                              "Get Inspired",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            subtitle: Text(
                              "Discover the many ways in which our coustomers use sleeknote",
                              style: TextStyle(fontSize: 18),
                            ),
                            trailing: Icon(Icons.chevron_right_sharp),
                          ),
                          Divider(
                            color: Colors.grey, // Line color
                            thickness: 2, // Line thickness
                            indent: 30, // Left padding
                            endIndent: 30, // Right padding
                          ),
                          ListTile(
                            title: Text(
                              "Become A partner",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            subtitle: Text(
                              "Join our partner program and eaarn 25% recurring commissions",
                              style: TextStyle(fontSize: 18),
                            ),
                            trailing: Icon(Icons.chevron_right_sharp),
                          ),
                          Divider(
                            color: Colors.grey, // Line color
                            thickness: 2, // Line thickness
                            indent: 30, // Left padding
                            endIndent: 30, // Right padding
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
