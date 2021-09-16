# FactoryPatternSwift
An example of the widely used Factory Pattern written in Swift

Factory Pattern is a creational pattern that hides the object creation from the
caller. It provides the single object to the caller. It reduces coupling and
provides alot of flexibility.

As mentioned in the example below, firstly, Person isnt concerned as to how a
Mobile is created, it just lets the Mobile Factory handle the creation.

Secondly, when we need to add more types of Mobile we dont need to change previously
defined Persons, or the logic outside of the Mobile Factory, thus creating alot
of flexibility when scaling.
