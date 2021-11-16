"""
    Genie API

    Augemented Reality Made Easy.  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: hello@genie-ar.ch
    Generated by: https://openapi-generator.tech
"""


import re  # noqa: F401
import sys  # noqa: F401

from genie.model_utils import (  # noqa: F401
    ApiTypeError,
    ModelComposed,
    ModelNormal,
    ModelSimple,
    cached_property,
    change_keys_js_to_python,
    convert_js_args_to_python_args,
    date,
    datetime,
    file_type,
    none_type,
    validate_get_composed_info,
)
from ..model_utils import OpenApiModel
from genie.exceptions import ApiAttributeError



class PatchedModelUpdate(ModelNormal):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.

    Attributes:
      allowed_values (dict): The key is the tuple path to the attribute
          and the for var_name this is (var_name,). The value is a dict
          with a capitalized key describing the allowed value and an allowed
          value. These dicts store the allowed enum values.
      attribute_map (dict): The key is attribute name
          and the value is json key in definition.
      discriminator_value_class_map (dict): A dict to go from the discriminator
          variable value to the discriminator class name.
      validations (dict): The key is the tuple path to the attribute
          and the for var_name this is (var_name,). The value is a dict
          that stores validations for max_length, min_length, max_items,
          min_items, exclusive_maximum, inclusive_maximum, exclusive_minimum,
          inclusive_minimum, and regex.
      additional_properties_type (tuple): A tuple of classes accepted
          as additional properties values.
    """

    allowed_values = {
    }

    validations = {
        ('name_de',): {
            'max_length': 100,
        },
        ('name_en',): {
            'max_length': 100,
        },
        ('name_fr',): {
            'max_length': 100,
        },
        ('name_it',): {
            'max_length': 100,
        },
        ('number',): {
            'inclusive_maximum': 2147483647,
            'inclusive_minimum': 0,
        },
        ('site_url_de',): {
            'max_length': 200,
        },
        ('site_url_en',): {
            'max_length': 200,
        },
        ('site_url_fr',): {
            'max_length': 200,
        },
        ('site_url_it',): {
            'max_length': 200,
        },
        ('sku',): {
            'max_length': 100,
        },
        ('price',): {
            'regex': {
                'pattern': r'^\d{0,8}(?:\.\d{0,2})?$',  # noqa: E501
            },
        },
    }

    @cached_property
    def additional_properties_type():
        """
        This must be a method because a model may have properties that are
        of type self, this must run after the class is loaded
        """
        return (bool, date, datetime, dict, float, int, list, str, none_type,)  # noqa: E501

    _nullable = False

    @cached_property
    def openapi_types():
        """
        This must be a method because a model may have properties that are
        of type self, this must run after the class is loaded

        Returns
            openapi_types (dict): The key is attribute name
                and the value is attribute type.
        """
        return {
            'name_de': (str, none_type,),  # noqa: E501
            'name_en': (str, none_type,),  # noqa: E501
            'name_fr': (str, none_type,),  # noqa: E501
            'name_it': (str, none_type,),  # noqa: E501
            'status': (bool, date, datetime, dict, float, int, list, str, none_type,),  # noqa: E501
            'description': (str,),  # noqa: E501
            'description_de': (str, none_type,),  # noqa: E501
            'description_en': (str, none_type,),  # noqa: E501
            'description_fr': (str, none_type,),  # noqa: E501
            'description_it': (str, none_type,),  # noqa: E501
            'number': (int, none_type,),  # noqa: E501
            'site_url_de': (str, none_type,),  # noqa: E501
            'site_url_en': (str, none_type,),  # noqa: E501
            'site_url_fr': (str, none_type,),  # noqa: E501
            'site_url_it': (str, none_type,),  # noqa: E501
            'scaleable': (bool,),  # noqa: E501
            'sku': (str, none_type,),  # noqa: E501
            'price': (str, none_type,),  # noqa: E501
            'price_currency': (str,),  # noqa: E501
        }

    @cached_property
    def discriminator():
        return None


    attribute_map = {
        'name_de': 'name_de',  # noqa: E501
        'name_en': 'name_en',  # noqa: E501
        'name_fr': 'name_fr',  # noqa: E501
        'name_it': 'name_it',  # noqa: E501
        'status': 'status',  # noqa: E501
        'description': 'description',  # noqa: E501
        'description_de': 'description_de',  # noqa: E501
        'description_en': 'description_en',  # noqa: E501
        'description_fr': 'description_fr',  # noqa: E501
        'description_it': 'description_it',  # noqa: E501
        'number': 'number',  # noqa: E501
        'site_url_de': 'site_url_de',  # noqa: E501
        'site_url_en': 'site_url_en',  # noqa: E501
        'site_url_fr': 'site_url_fr',  # noqa: E501
        'site_url_it': 'site_url_it',  # noqa: E501
        'scaleable': 'scaleable',  # noqa: E501
        'sku': 'sku',  # noqa: E501
        'price': 'price',  # noqa: E501
        'price_currency': 'price_currency',  # noqa: E501
    }

    read_only_vars = {
        'description',  # noqa: E501
        'price_currency',  # noqa: E501
    }

    _composed_schemas = {}

    @classmethod
    @convert_js_args_to_python_args
    def _from_openapi_data(cls, *args, **kwargs):  # noqa: E501
        """PatchedModelUpdate - a model defined in OpenAPI

        Keyword Args:
            _check_type (bool): if True, values for parameters in openapi_types
                                will be type checked and a TypeError will be
                                raised if the wrong type is input.
                                Defaults to True
            _path_to_item (tuple/list): This is a list of keys or values to
                                drill down to the model in received_data
                                when deserializing a response
            _spec_property_naming (bool): True if the variable names in the input data
                                are serialized names, as specified in the OpenAPI document.
                                False if the variable names in the input data
                                are pythonic names, e.g. snake case (default)
            _configuration (Configuration): the instance to use when
                                deserializing a file_type parameter.
                                If passed, type conversion is attempted
                                If omitted no type conversion is done.
            _visited_composed_classes (tuple): This stores a tuple of
                                classes that we have traveled through so that
                                if we see that class again we will not use its
                                discriminator again.
                                When traveling through a discriminator, the
                                composed schema that is
                                is traveled through is added to this set.
                                For example if Animal has a discriminator
                                petType and we pass in "Dog", and the class Dog
                                allOf includes Animal, we move through Animal
                                once using the discriminator, and pick Dog.
                                Then in Dog, we will make an instance of the
                                Animal class but this time we won't travel
                                through its discriminator because we passed in
                                _visited_composed_classes = (Animal,)
            name_de (str, none_type): Name will be visible in Android as title.. [optional]  # noqa: E501
            name_en (str, none_type): Name will be visible in Android as title.. [optional]  # noqa: E501
            name_fr (str, none_type): Name will be visible in Android as title.. [optional]  # noqa: E501
            name_it (str, none_type): Name will be visible in Android as title.. [optional]  # noqa: E501
            status (bool, date, datetime, dict, float, int, list, str, none_type): DRAFT=In development, READY=Modelling complete, ONLINE=Active use.. [optional]  # noqa: E501
            description (str): [optional]  # noqa: E501
            description_de (str, none_type): Used when shared as link and for SEO.. [optional]  # noqa: E501
            description_en (str, none_type): Used when shared as link and for SEO.. [optional]  # noqa: E501
            description_fr (str, none_type): Used when shared as link and for SEO.. [optional]  # noqa: E501
            description_it (str, none_type): Used when shared as link and for SEO.. [optional]  # noqa: E501
            number (int, none_type): Use for custom sort order.. [optional]  # noqa: E501
            site_url_de (str, none_type): Link to the product on your site. Required when using standalone QR codes (e.g. Print).. [optional]  # noqa: E501
            site_url_en (str, none_type): Link to the product on your site. Required when using standalone QR codes (e.g. Print).. [optional]  # noqa: E501
            site_url_fr (str, none_type): Link to the product on your site. Required when using standalone QR codes (e.g. Print).. [optional]  # noqa: E501
            site_url_it (str, none_type): Link to the product on your site. Required when using standalone QR codes (e.g. Print).. [optional]  # noqa: E501
            scaleable (bool): Let's the user scale the model in AR when enabled.. [optional]  # noqa: E501
            sku (str, none_type): Stock-keeping unit. The identfier of the product in external webstore.. [optional]  # noqa: E501
            price (str, none_type): Display price. The effective price is determined by the external webstore.. [optional]  # noqa: E501
            price_currency (str): [optional]  # noqa: E501
        """

        _check_type = kwargs.pop('_check_type', True)
        _spec_property_naming = kwargs.pop('_spec_property_naming', False)
        _path_to_item = kwargs.pop('_path_to_item', ())
        _configuration = kwargs.pop('_configuration', None)
        _visited_composed_classes = kwargs.pop('_visited_composed_classes', ())

        self = super(OpenApiModel, cls).__new__(cls)

        if args:
            raise ApiTypeError(
                "Invalid positional arguments=%s passed to %s. Remove those invalid positional arguments." % (
                    args,
                    self.__class__.__name__,
                ),
                path_to_item=_path_to_item,
                valid_classes=(self.__class__,),
            )

        self._data_store = {}
        self._check_type = _check_type
        self._spec_property_naming = _spec_property_naming
        self._path_to_item = _path_to_item
        self._configuration = _configuration
        self._visited_composed_classes = _visited_composed_classes + (self.__class__,)

        for var_name, var_value in kwargs.items():
            if var_name not in self.attribute_map and \
                        self._configuration is not None and \
                        self._configuration.discard_unknown_keys and \
                        self.additional_properties_type is None:
                # discard variable.
                continue
            setattr(self, var_name, var_value)
        return self

    required_properties = set([
        '_data_store',
        '_check_type',
        '_spec_property_naming',
        '_path_to_item',
        '_configuration',
        '_visited_composed_classes',
    ])

    @convert_js_args_to_python_args
    def __init__(self, *args, **kwargs):  # noqa: E501
        """PatchedModelUpdate - a model defined in OpenAPI

        Keyword Args:
            _check_type (bool): if True, values for parameters in openapi_types
                                will be type checked and a TypeError will be
                                raised if the wrong type is input.
                                Defaults to True
            _path_to_item (tuple/list): This is a list of keys or values to
                                drill down to the model in received_data
                                when deserializing a response
            _spec_property_naming (bool): True if the variable names in the input data
                                are serialized names, as specified in the OpenAPI document.
                                False if the variable names in the input data
                                are pythonic names, e.g. snake case (default)
            _configuration (Configuration): the instance to use when
                                deserializing a file_type parameter.
                                If passed, type conversion is attempted
                                If omitted no type conversion is done.
            _visited_composed_classes (tuple): This stores a tuple of
                                classes that we have traveled through so that
                                if we see that class again we will not use its
                                discriminator again.
                                When traveling through a discriminator, the
                                composed schema that is
                                is traveled through is added to this set.
                                For example if Animal has a discriminator
                                petType and we pass in "Dog", and the class Dog
                                allOf includes Animal, we move through Animal
                                once using the discriminator, and pick Dog.
                                Then in Dog, we will make an instance of the
                                Animal class but this time we won't travel
                                through its discriminator because we passed in
                                _visited_composed_classes = (Animal,)
            name_de (str, none_type): Name will be visible in Android as title.. [optional]  # noqa: E501
            name_en (str, none_type): Name will be visible in Android as title.. [optional]  # noqa: E501
            name_fr (str, none_type): Name will be visible in Android as title.. [optional]  # noqa: E501
            name_it (str, none_type): Name will be visible in Android as title.. [optional]  # noqa: E501
            status (bool, date, datetime, dict, float, int, list, str, none_type): DRAFT=In development, READY=Modelling complete, ONLINE=Active use.. [optional]  # noqa: E501
            description (str): [optional]  # noqa: E501
            description_de (str, none_type): Used when shared as link and for SEO.. [optional]  # noqa: E501
            description_en (str, none_type): Used when shared as link and for SEO.. [optional]  # noqa: E501
            description_fr (str, none_type): Used when shared as link and for SEO.. [optional]  # noqa: E501
            description_it (str, none_type): Used when shared as link and for SEO.. [optional]  # noqa: E501
            number (int, none_type): Use for custom sort order.. [optional]  # noqa: E501
            site_url_de (str, none_type): Link to the product on your site. Required when using standalone QR codes (e.g. Print).. [optional]  # noqa: E501
            site_url_en (str, none_type): Link to the product on your site. Required when using standalone QR codes (e.g. Print).. [optional]  # noqa: E501
            site_url_fr (str, none_type): Link to the product on your site. Required when using standalone QR codes (e.g. Print).. [optional]  # noqa: E501
            site_url_it (str, none_type): Link to the product on your site. Required when using standalone QR codes (e.g. Print).. [optional]  # noqa: E501
            scaleable (bool): Let's the user scale the model in AR when enabled.. [optional]  # noqa: E501
            sku (str, none_type): Stock-keeping unit. The identfier of the product in external webstore.. [optional]  # noqa: E501
            price (str, none_type): Display price. The effective price is determined by the external webstore.. [optional]  # noqa: E501
            price_currency (str): [optional]  # noqa: E501
        """

        _check_type = kwargs.pop('_check_type', True)
        _spec_property_naming = kwargs.pop('_spec_property_naming', False)
        _path_to_item = kwargs.pop('_path_to_item', ())
        _configuration = kwargs.pop('_configuration', None)
        _visited_composed_classes = kwargs.pop('_visited_composed_classes', ())

        if args:
            raise ApiTypeError(
                "Invalid positional arguments=%s passed to %s. Remove those invalid positional arguments." % (
                    args,
                    self.__class__.__name__,
                ),
                path_to_item=_path_to_item,
                valid_classes=(self.__class__,),
            )

        self._data_store = {}
        self._check_type = _check_type
        self._spec_property_naming = _spec_property_naming
        self._path_to_item = _path_to_item
        self._configuration = _configuration
        self._visited_composed_classes = _visited_composed_classes + (self.__class__,)

        for var_name, var_value in kwargs.items():
            if var_name not in self.attribute_map and \
                        self._configuration is not None and \
                        self._configuration.discard_unknown_keys and \
                        self.additional_properties_type is None:
                # discard variable.
                continue
            setattr(self, var_name, var_value)
            if var_name in self.read_only_vars:
                raise ApiAttributeError(f"`{var_name}` is a read-only attribute. Use `from_openapi_data` to instantiate "
                                     f"class with read only attributes.")
