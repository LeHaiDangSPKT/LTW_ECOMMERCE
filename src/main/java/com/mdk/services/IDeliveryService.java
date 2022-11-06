package com.mdk.services;

import com.mdk.models.Delivery;

public interface IDeliveryService {
    Delivery findById(int id);
}
